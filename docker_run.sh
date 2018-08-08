xhost +
IMAGE=$1
docker run -it --rm \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	--entrypoint bash \
	$IMAGE
