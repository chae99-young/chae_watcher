#! /usr/bin/env python3

import cv2
import numpy as np

import roslib
import rospy
from std_msgs.msg import Header
from std_msgs.msg import String
from sensor_msgs.msg import CompressedImage
from sensor_msgs.msg import Image

camera_width = 640
camera_height = 480



def image_callback(image):
    global ros_image
    ros_image = np.frombuffer(image.data, dtype=np.uint8).reshape(image.height, image.width, -1)
    #img = ros_image[:, :, ::-1].transpose(2, 0, 1)
    #img = np.ascontiguousarray(img)
    cv2.imshow("result", ros_image)
    cv2.waitKey(10)



if __name__ == "__main__":
    # load custom plugin and engine
    rospy.init_node("playrosbag")
    image_topic = "/camera/color/image_raw"

    rospy.Subscriber(image_topic, Image, image_callback, queue_size=1, buff_size=52428800)
    rospy.spin()
