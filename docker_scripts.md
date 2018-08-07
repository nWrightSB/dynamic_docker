BUILD //

docker build \
      --build-arg ls_address=[server_address] \
      --build-arg project_path=./project/dynamic_docker.xml \
      -t soapuipro_dynamic .


RUN //

docker run \
    -v ./readyapi/reports:~/readyapi_reports \
