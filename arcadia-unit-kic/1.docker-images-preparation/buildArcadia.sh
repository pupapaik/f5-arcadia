#!/bin/bash

cwd=$(pwd)
for dir in {main,bakend,app3,app3}
do
    cd $cwd/$dir
    docker build . -t "docker.io/madhukar32/arcadia-${dir}:unit"
    docker push "docker.io/madhukar32/arcadia-${dir}:unit"
done
