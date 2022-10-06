#include <iostream>
#include <chrono>
#include <cmath>
#include "cuda_utils.h"
#include "logging.h"
#include "common.hpp"
#include "utils.h"
#include "preprocess.h"
#include "yolov5-detect.h"
#include "sensor
#include <sensor_msgs/Image.h>


#include "yololayer.h"
#include "ros/ros.h"
#include "detect/box.h" 
#include "detect/boxes.h"


cv::Mat img;

void image_callback(const sensor_msgs::Image &img){
    int w = img.cols;
    int h = img.rows;
    unsigned char *d_image;
    cudaMalloc((void **)&d_image, sizeof(unsigned char) * w * h * 3);
    cudaMemcpy(d_image, img.data, w * h * 3 * sizeof(unsigned char),cudaMemcpyHostToDevice);

    std::vector<Yolo::Detection> &res = det->detect(d_image, w, h,img);
    detect::boxes pub_boxes;
    pub_boxes = new box[res.size()];
    pub_boxes.box_num = res.size();
    for (size_t j = 0; j < res.size(); j++)
        {
            detect::box = pub_box;
            pub_box.x = res[j].bbox[0];
            pub_box.y = res[j].bbox[1];
            pub_box.confidence = res[j].conf;
            pub_boxes.boxes[j]=pub_box;
        }
    print(pub_boxes);
    boxes_pub.publish(pub_boxes);
    cudaFree(d_image);
    return 0;
}

int main(int argc, char **argv)
{
    ros::init(argc,argv,"detect");
    ros::NodeHandle n;

    cudaSetDevice(0);

    std::string engine_name = "/home/weilan/watcher/src/detect/engine/yolov5_best.engine";
    yolov5 *det = new yolov5(engine_name, 7);

    ros::Subscriber sub = n.subscribe("/watcher/image_raw",1000,image_callback);
    ros::Publisher pub = n.advertise<>("vehicles_boxes",1000);
    ros::Rate loop_rate(10);
    
    img = cv::imread("/home/weilan/watcher/src/detect/msg/bus.jpg");
    

    ros::spin();
    return 0;
}
