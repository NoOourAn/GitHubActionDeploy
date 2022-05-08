#!/bin/bash
set -x

kill -0 `cat $CATALINA_PID` > /dev/null 2>&1
if [ $? -gt 0 ]
then
    echo "Check tomcat" | mailx -s "Tomcat not running" nouranaborwash@gmail.com
fi