#!/bin/bash

JAVA="java"
CLASSPATH="./lib/Startoptions-J2.jar:./libHOBssl-J2.jar:./lib"
JAVAMAINCLASS="hob.hlc.som.StartoptionsManager"
java -cp $CLASSPATH $JAVAMAINCLASS -p./ -s./lib/hob/props/startup.xml