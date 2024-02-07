#!/bin/bash 

tag=$1
default_tag="v0.19.0"

if [ "$tag" == "" ]; then 
    tag=$default_tag
fi

if [ ! -d ./albatross ]; then 

    git clone git@github.com:nimiq/core-rs-albatross.git -b $tag albatross 
else 
    cd albatross 
    git fetch origin 
    git checkout $tag 
    cd ..
fi 

