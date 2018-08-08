FROM tensorflow/tensorflow:1.3.0-gpu

RUN apt-get update && apt-get install -y --no-install-recommends \
	libxext-dev \
	libxrender-dev \
	libsm6 \
	python-tk \
	&& \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY . /src
WORKDIR /src
RUN pip install -r requirements.txt

