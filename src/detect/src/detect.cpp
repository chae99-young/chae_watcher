#include <iostream>
#include <chrono>
#include <cmath>
#include "cuda_utils.h"
#include "logging.h"
#include "common.hpp"
#include "utils.h"
#include "preprocess.h"
#include "yolov5-detect.h"
#include <sensor_msgs/Image.h>
#include <cv_bridge/cv_bridge.h>
#include "opencv2/opencv.hpp"

#include "yololayer.h"
#include "ros/ros.h"
#include "detect/box.h" 
#include "detect/boxes.h"

using namespace std;
ros::Publisher boxes_pub;
    std::string engine_name = "/home/tuf2/chae_watcher/src/detect/engine/yolov5_best.engine";
    yolov5 *det; //engine_name,class_number


void image_callback(const sensor_msgs::Image &msg){
    
    //int w = img->width;
    cv_bridge::CvImagePtr cv_ptr;
    
    cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    cv::Mat img = cv_ptr->image;
    int w = img.cols;
    int h = img.rows;
    printf("7cv_Mat");

    unsigned char *d_image;
    cudaMalloc((void **)&d_image, sizeof(unsigned char) * w * h * 3);
    cudaMemcpy(d_image, img.data, w * h * 3 * sizeof(unsigned char),cudaMemcpyHostToDevice);
    printf("8cuda_malloc");
    std::vector<Yolo::Detection> res;
    det->detect(d_image, w, h,img,res);
    printf("detect");

   detect::boxes pub_boxes;

    pub_boxes.box_num = res.size();
    
    for (size_t j = 0; j < res.size(); j++)
        {               
            detect::box pub_box;
            pub_box.x = res[j].bbox[0];
            pub_box.y = res[j].bbox[1];
            pub_box.confidence = res[j].conf;
            std::cout<<pub_box.x <<' '<<pub_box.y<<' '<<pub_box.confidence<<std::endl;

            pub_boxes.boxes.push_back(pub_box);
        }
    //for(int i=0;i<res.size();i++)
     //   print(pub_boxes.boxes[i]);
    boxes_pub.publish(pub_boxes);
    printf("pub");

    cudaFree(d_image);
    
}

int main(int argc, char **argv)
{
    printf("1start");
    ros::init(argc,argv,"detect");
    ros::NodeHandle n;

    cudaSetDevice(0);
    printf("3cudasetdevice");

    det=new yolov5(engine_name, 1);
  //  det = new yolov5(engine_name, 4); //engine_name,class_number
    printf("4yolov5");
    ros::Subscriber sub = n.subscribe("/watcher/image_raw",1,image_callback);
    printf("5sub");
    boxes_pub = n.advertise<detect::boxes>("/vehicles_boxes",1);
    printf("6pub");
    //ros::Rate loop_rate(10);
    
    //img = cv::imread("/home/weilan/watcher/src/detect/msg/bus.jpg");
    

    ros::spin();
    return 0;
}
