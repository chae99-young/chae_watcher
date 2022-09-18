#include <iostream>
#include <ros/ros.h>
#include <geometry_msgs/Point.h>
#include <image_transport/image_transport.h>
#include <opencv2/core.hpp>      //Mat         ���Ŀ�
#include <opencv2/imgcodecs.hpp> //imread    ��ͼƬ����
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/imgproc/types_c.h>
using namespace cv;
using namespace std;

geometry_msgs::Point msg;
Mat world = imread("/home/tuf2/Watcher/src/watcher_pkg/test_img/world.jpg");

void callback(const geometry_msgs::Point &msg){
        CvPoint world_p = cvPoint(msg.x, msg.y);
	Mat temp=world;
        circle(temp, world_p, 10, Scalar(255, 0, 0));
        imshow("sub", temp);
        waitKey(30);
    ROS_INFO("sub _test is ub %f %f %f", msg.x, msg.y, msg.z);
}
int main(int argc, char **argv)
{
	ros::init(argc, argv, "sub_test");	//初始化ROS，节点名命名为node_a，节点名必须保持唯一
    //ros::Rate loop_rate(10);	//设置发送数据的频率为10Hz
    ros::NodeHandle n;	//实例化节点, 节点进程句柄
     ros::Subscriber sub = n.subscribe("/transform/point_on_img",1,callback);

    ros::spin();
    return 0;
}
