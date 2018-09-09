#!/bin/bash

if [ -z ${LISTEN_ADDRESS} ];
then
    export LISTEN_ADDRESS='[::0]:8083'
fi

if [ -z ${OWN_URL} ];
then
    export OWN_URL=http://192.168.3.108:8083/
fi

if [-z ${MANAGER_ID}]
then
    export MANAGER_ID=1234567899876543212345678
fi

if [-z ${MANAGER_SECRET}]
then
    export MANAGER_SECRET=theworldistheworld
fi

if [ -z ${BLENDER_WINDOWS_PATH} ];
then
    export BLENDER_WINDOWS_PATH=c:/temp/blender.exe
fi

if [ -z ${BLENDER_LINUX_PATH} ];
then
    export BLENDER_LINUX_PATH=/opt/myblenderbuild/blender
fi

if [ -z ${BLENDER_DARWIN_PATH} ];
then
    export BLENDER_DARWIN_PATH=/opt/myblenderbuild/blender
fi

if [ -z ${RENDER_WINDOWS_PATH} ];
then
    export RENDER_WINDOWS_PATH=r:/
fi

if [ -z ${RENDER_LINUX_PATH} ];
then
    export RENDER_LINUX_PATH=/render
fi

if [ -z ${RENDER_DARWIN_PATH} ];
then
    export RENDER_DARWIN_PATH=/Volume/render/
fi

if [ -z ${STORAGE_WINDOWS_PATH} ];
then
    export STORAGE_WINDOWS_PATH=s:/
fi

if [ -z ${STORAGE_LINUX_PATH} ];
then
    export STORAGE_LINUX_PATH=/shared/
fi

if [ -z ${STORAGE_DARWIN_PATH} ];
then
    export STORAGE_DARWIN_PATH=/Volume/shared/
fi

envsubst < flamenco-manager-2.1.1.yaml_template > flamenco-manager.yaml

cat flamenco-manager-example.yaml

cat flamenco-manager.yaml

./flamenco-manager