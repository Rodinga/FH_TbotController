#!/bin/bash
#This ASSUMES FHT_Bot and FHT_BotController are in the same directory
#moves to upper directory
cd ./..
if [ -d "./FH_Tbot" ];
	then
		if [ -d "./FH_TbotController" ];
			then
				if [ -d "./FH_Tbot/data" ];
					then
						rm -r "./FH_Tbot/data"
						cp -R "./FH_TbotController/build/data" "./FH_Tbot/data"
						echo "The loading is complete"
					else
						echo Data not found
				fi
			else
				echo FH_TBotController not found
		fi
	else
		echo FH_TBot not found
fi










