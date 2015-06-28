#!/bin/bash
docker_image="chris/ubuntu-node"
local_port=8080
livereload_port=35729

# stop any running instances of this container
running_instances=($(docker ps | grep "chris/ubuntu-node" | awk '{ print $1 }'))
for i in "${running_instances[@]}"
do
	echo -n "Stopped instance: "
	docker stop $i
done

echo -n "Starting instance: "
docker run -d -p ${local_port}:8080 -p ${livereload_port}:35729 -v `pwd`/:/mount/app ${docker_image}
echo "on $(boot2docker ip):${local_port}"
