#include <ros/ros.h>
#include "watcher_pkg/boxes.h"
#include <geometry_msgs/Point.h>
#include<geometry_msgs/PointStamped.h>
#include <sensor_msgs/Image.h>
#include <image_transport/image_transport.h>
#include <opencv2/core.hpp>      //Mat         ���Ŀ�
#include <opencv2/imgcodecs.hpp> //imread    ��ͼƬ����
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include<cv_bridge/cv_bridge.h>
#include <opencv2/imgproc/types_c.h>
using namespace cv;
using namespace std;


const double W=4.48;
const double H=8.08;
vector<Point2f> camPoint;
vector<Point2f> worldPoint;
Mat Transform;
Mat world = imread("/home/tuf2/Watcher/src/watcher_pkg/test_img/world.jpg");
//Mat cam=imread("/home/tuf2/Watcher/test_ws/src/watcher_pkg/test_img/cam.jpg");
Mat cam;
int if_ok=0;

geometry_msgs::Point origin_p;
geometry_msgs::Point transformed_p;

void getMatrix()
{
    Transform = Mat(getPerspectiveTransform(camPoint, worldPoint));
    cout << "transform matrix: " << endl;
    cout << Transform << endl;
}

void on_mouse_world(int event, int x, int y, int flags, void *ustc)
{
    if (event == EVENT_LBUTTONDOWN)
    {
        CvPoint i_p = cvPoint(x, y);
        int w_x, w_y;
        cout << "world point: " << i_p.x << ' ' << i_p.y << endl;
        worldPoint.push_back(i_p);
    }
}
void on_mouse_cam(int event, int x, int y, int flags, void *ustc)
{
    if (event == EVENT_LBUTTONDOWN)
    {
        CvPoint i_p = cvPoint(x, y);
        cout << "cam point: " << i_p.x << ' ' << i_p.y << endl;
        camPoint.push_back(i_p);
    }
}

class Subscribe
{
public:
    Subscribe()
    {
        sub_ = n_.subscribe("/watcher/image_raw", 1, &Subscribe::callback, this);
    }
    void callback(const sensor_msgs::Image &msg)
    {
        ROS_INFO("get img");
        cv_bridge::CvImagePtr cv_ptr;
        cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
        ROS_INFO(cv_ptr->encoding.c_str());
        //cv_ptr->image.convertTo(cam,CV_32F);
        //world.convertTo(world,CV_32F);
        cv_ptr->image.copyTo(cam);
        if(!world.empty())
        imshow("world", world);
        if(!cam.empty())
        imshow("cam", cam);
        setMouseCallback("cam", on_mouse_cam, 0);
        setMouseCallback("world", on_mouse_world, 0);
        if (camPoint.size() == 4 && worldPoint.size() == 4)
        {
            getMatrix();
            if_ok=1;
        }
        waitKey(30);
            if(!Transform.empty()){
                sub_.shutdown();
                destroyAllWindows();
            }
    }

private:
    ros::NodeHandle n_;
    ros::Subscriber sub_;
};

class SubscribeAndPublish
{
public:
    SubscribeAndPublish()
    {
        // Topic you want to publish
        pub_img = n_.advertise<geometry_msgs::Point>("/transform/point_on_img", 1);
        pub_map1 = n_.advertise<geometry_msgs::PointStamped>("/transform/point_on_map1", 1);
	pub_map2 = n_.advertise<geometry_msgs::PointStamped>("/transform/point_on_map2", 1);
        // Topic you want to subscribe
        sub_ = n_.subscribe("/vehicle_boxes", 1, &SubscribeAndPublish::callback, this);
    }
    void transform(const watcher_pkg::box msg,int id){
        ROS_INFO("pub_sub is sub %f%f%f", msg.x, msg.y);
        if(if_ok==0){
            return ;
        }
        double position[3];
        position[0] = msg.x;
        position[1] = msg.y;
        position[2] = 1;
        Mat M1 = Mat(Transform);
        M1.convertTo(Transform,CV_64F);
        Mat M2 = Mat(3, 1, CV_64F, position);
        Mat M3 = M1 * M2;
        // cout <<"1" << M1 <<"3" << M3;
        float solved_x = M3.at<double>(0, 0) / M3.at<double>(2, 0);
        float solved_y = M3.at<double>(1, 0) / M3.at<double>(2, 0);
        // PUBLISHED_MESSAGE_TYPE output;
        //.... do something with the input and generate the output...
        geometry_msgs::Point img_point;
        img_point.x = solved_x;
        img_point.y = solved_y;
        img_point.z = 0;
        ROS_INFO("img is pub %f %f %f", img_point.x, img_point.y, img_point.z);
        pub_img.publish(img_point);
        geometry_msgs::PointStamped map_point;
       map_point .point.y= W*(1-solved_x/world.size().width);
        map_point.point.x= H*(1-solved_y/world.size().height);
        map_point.point.z = 0.0;
        map_point.header.frame_id="map";
        ROS_INFO("map is pub %s %f %f %f", map_point.header.frame_id,map_point.point.x, map_point.point.y, map_point.point.z);
	if(id==0)
        pub_map1.publish(map_point);
	else if(id==1)
	pub_map2.publish(map_point);

    }
    void callback(const watcher_pkg::boxes &msg)
    {
        int i=msg.box_num;
        int j=0;
        for(j=0;j<i;j++){
            transform(msg.boxes[j],j);
        }
    }

private:
    ros::NodeHandle n_;
    ros::Publisher pub_img;
    ros::Publisher pub_map1;
    ros::Publisher pub_map2;
    ros::Subscriber sub_;
};
`
int main(int argc, char **argv)
{


    ros::init(argc, argv, "watcher");
    SubscribeAndPublish SAPObject;
    Subscribe SObejct;
    ros::spin();
    return 0;
}
