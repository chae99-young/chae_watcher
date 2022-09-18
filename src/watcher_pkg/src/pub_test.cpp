#include <iostream>
#include <ros/ros.h>
#include <geometry_msgs/Point.h>
#include <image_transport/image_transport.h>
#include <opencv2/core.hpp>      //Mat         ���Ŀ�
#include <opencv2/opencv.hpp> //imread    ��ͼƬ����
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/imgproc/types_c.h>
using namespace cv;
using namespace std;

geometry_msgs::Point msg;
Mat cam = imread("../test_img/cam.jpg");

void on_mouse_solve(int event, int x, int y, int flags, void *ustc)
{
    if (event == EVENT_LBUTTONDOWN)
    {
        msg.x=x;
        msg.y=y;
        msg.z=0;
        CvPoint cam_p = cvPoint(x, y);
        circle(cam, cam_p, 10, Scalar(255, 0, 0));

    }
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "pub_test");	//初始化ROS，节点名命名为node_a，节点名必须保持唯一
    //ros::Rate loop_rate(10);	//设置发送数据的频率为10Hz
    ros::NodeHandle n;	//实例化节点, 节点进程句柄
    ros::Publisher pub = n.advertise<geometry_msgs::Point>("origin_car_point", 1);	

   while(ros::ok())
    {

         imshow("pub", cam);
         setMouseCallback("pub", on_mouse_solve, 0); 	
                     	ROS_INFO("pub_test is publishing %f %f %f", msg.x,msg.y,msg.z);
    	pub.publish(msg);	//向话题“str_message”发布消息
    	ros::spinOnce();	//不是必须，若程序中订阅话题则必须，否则回掉函数不起作用。
    	//loop_rate.sleep();	//按前面设置的10Hz频率将程序挂起
        waitKey(30);
    } 
    return 0;
}
