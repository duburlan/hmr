xhost +
IMAGE=$1
docker run -it --rm \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $(pwd):/src \
	-w /src \
	--entrypoint bash \
	$IMAGE
