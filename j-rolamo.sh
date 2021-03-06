#!/bin/sh
# Author: Vittorio Valent
#

echo "###############################################################################"
echo "########        _        _____   ____  _               __  __  ____   #########"
echo "########       | |      |  __ \ / __ \| |        /\   |  \/  |/ __ \  #########"
echo "########       | |______| |__) | |  | | |       /  \  | \  / | |  | | #########"
echo "########   _   | |______|  _  /| |  | | |      / /\ \ | |\/| | |  | | #########"
echo "########  | |__| |      | | \ \| |__| | |____ / ____ \| |  | | |__| | #########"
echo "########   \____/       |_|  \_\\_____/|______/_/    \_\_|  |_|\____/  #########"
echo "###############################################################################"
echo "                                                                         "
echo "                        @@@@@@@@@@@                                      "   
echo "                     @@@@@@@@@@@@@@@@@                                   "   
echo "                   @@@@@@@@@@@@@@@@@@@@@@@@@                             "   
echo "                  @@@@@@@@@@@@@@.@@    @@@@@@                            "  
echo "                @@@@@@@@@                @@@@@                           "   
echo "                                          @@@@@                          "   
echo "               @@                          @@@@     ____________________ "   
echo "               @                            @@@    |                    |"   
echo "                @                          @ @@    |  IMPARATEVI LE     |"   
echo "                  @ @@@@@  @@@@@  @@@@@ @          |                    |"    
echo "                   @    @@       @@   @@           |  	BASI !!!!       |"  
echo "                   @@@@@@         @@@@@            | ___________________|"      
echo "                           @                      / /                    " 
echo "                          @@                     //                      " 
echo "                         @@@@                   /                        "
echo "                                                   					   "
echo "                         @@@@@@                    					   "
echo "                     @@@@ @@@@@ @@                 					   "
echo "                      @   ____   @                                       "
echo "                   @@@%         @@                                       "
echo "                    @@@@@@@@@@@                                          "
echo "                     @@@@@@@@@@@@@@@@@                                   "
echo "                       @@@@@@@@@@@@@@                                    "   
echo "                         @@@@@@@                                         "
echo " "
echo "-------------------------------------------------------------------------"                                                             
	               
echo "Welcome to J-Rolamo! What is your project's name?"

echo -n "Project name: "

read projectname

echo "What is your project's packaging?"

echo -n "Packaging: "

read package

echo -n "Do you want to run the project after installation? (y/N) " 

read run

echo "Creating a new Project with name "$projectname

mvn archetype:generate -B -DarchetypeGroupId=it -DarchetypeArtifactId=j-rolamo -DarchetypeVersion=1.7 -DgroupId=$package -Dpackage=$package.$projectname -DartifactId=$projectname -Dversion=0.1-SNAPSHOT -Dname=$projectname

cd $projectname

mvn clean install

if [ $run = y ];
	then mvn spring-boot:run
else 
	echo "Project created succesfully, have fun!"
fi





