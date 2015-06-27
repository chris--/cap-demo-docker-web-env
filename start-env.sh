container_name="capgemini-angular"
docker_image="chris/ubuntu-node"
local_port=8080

# kill any instances of this image
running_instances=($(docker ps | grep ${container_name}))
echo ${running_instances}
#docker stop ${container_name}
#docker rm --link ${container_name}

#docker run --name ${container_name} -d -p ${local_port}:8080 -v `pwd`/src/:/src/ ${docker_image}
