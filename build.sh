#!/bin/bash
#This file takes the development directory and outputs compressed files
#intended for use on the FHTbot itself.
#clean directory
rm -r ./build/data/*
#copy directory
cp --parents -r ./public_html/** ./build/
mv -T ./build/public_html ./build/data
#move into data directory
cd ./build/data
#compress html
gzip -7 -r --rsyncable *.html
#compress JavaScript
cd ./js
gzip -7 -r --rsyncable *.js
cd ./..
#compress media
cd ./media
gzip -7 -r --rsyncable *
cd ./..
#compress images
cd ./img
gzip -7 -r --rsyncable *.png
#Back out to root project folder
cd ./../../..
