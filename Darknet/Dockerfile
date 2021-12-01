FROM chipsuri/zed_ros:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
		git \
		nano \
		pkg-config \
		libopencv-dev
RUN cd /root && git clone https://github.com/AlexeyAB/darknet && cd darknet && sed -i 's/GPU=0/GPU=1/; s/CUDNN=0/CUDNN=1/; s/OPENCV=0/OPENCV=1/; s/LIBSO=0/LIBSO=1/; s/ZED_CAMERA=0/ZED_CAMERA=1/' Makefile && make
RUN wget https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v4_pre/yolov4-tiny.weights && cd ..
WORKDIR /root/darknet

