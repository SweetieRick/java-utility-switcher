#!/bin/bash

# This little script should help automate the process of switching between Java or JDK versions
# This is especially useful when you are developing in different IDEs and Enviroments
# Dependencies: Echolor (https://github.com/Gruppio/Echolor)

# Define some color variables
RED=$(printf " [31m")
GREEN=$(printf " [92m")
BLUE=$(printf " [44m")
REFCOLOR=$(printf " [35m")
RESET=$(printf " [m")
ECHOLOR=$(/usr/local/bin/echolor)

# VERSION=$1

ECHOLOR -g "Welcome to JDK Switcher! Made by SweetieRick"
ECHOLOR -y "Be sure to use this script only on MacOS as it might not work on other OSes"

sleep 4s

ECHOLOR -R "Alright, let's chose your JDK version!"

sleep 2.5s

# Prints all the different JDK versions on the machine
/usr/libexec/java_home -V

# Notifies of the Java version
ECHOLOR -y "Please insert the version you wanna use"
read VERSION
echo "Setting JDK version..."

# Actually sets the version
export JAVA_HOME=`/usr/libexec/java_home -v ${VERSION}

done