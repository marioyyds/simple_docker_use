# run a container
# 1) expose port, 7861, 7862 and 7863
# 2) allow docker to use NVIDIA GPU
# 3) the container based on 'test_img'
docker run -p7861:7861 -p7862:7862 -p7863:7863 -itd --net=bridge --gpus all -e NVIDIA_DRIVER_CAPABILITIES=compute,utility -e NVIDIA_VISIBLE_DEVICES=all test_img /bin/sh