#!/bin/bash
#First Layer Read Loop 
for file in ./public_html/*
do
	gzip -7 -k "$file"
	mv -f "$file.gz" "../FH_Tbot/data/"
done
#Image Read Loop 
#for file in ./public_html/resources/img/*
#do
#	gzip -7 -k "$file"
#	mv -u "$file.gz"  "../FH_Tbot/data/"
#done

#Copy Turtle to data and compress
cp -u ./public_html/T/TurtleMode.html ../FH_Tbot/data/T/TurtleMode.html
gzip -7 -f ../FH_Tbot/data/T/TurtleMode.html
#Copy JS to data, compress
cp -u ./public_html/T/js/blocklyBall.js ../FH_Tbot/data/T/js/blocklyBall.js 
gzip -7 -f ../FH_Tbot/data/T/js/blocklyBall.js
#msg folder
cp -u ./public_html/T/js/msg/messages.js.gz ../FH_Tbot/data/T/js/msg/messages.js.gz
#msg/js
cp -u ./public_html/T/js/msg/js/en.js.gz ../FH_Tbot/data/T/js/msg/js/en.js.gz
cp -u ./public_html/T/js/msg/js/en-gb.js.gz ../FH_Tbot/data/T/js/msg/js/en-gb.js.gz
#msg/json
cp -u ./public_html/js/msg/json/en.json.gz ../FH_Tbot/data/T/js/msg/json/en.json.gz
cp -u ./public_html/js/msg/json/en-gb.json.gz ../FH_Tbot/data/T/js/msg/json/en-gb.json.gz









