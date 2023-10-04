#!/bin/sh
# -------------------------------------------------------
# java-100practices
# answer006.sh
# author: jswaf
# -------------------------------------------------------

errorcheck()
{
    if [ $1 -ne 0 ]; then
        exit $1
    fi
}

CLASSES=classes

if [ ! -d ${CLASSES} ]; then
    mkdir ${CLASSES}
    errorcheck $?
fi

javac -sourcepath src -d ${CLASSES} -encoding UTF-8 src/Answer006.java
errorcheck $?

export TZ=Asia/Tokyo
java -cp ${CLASSES} Answer006
errorcheck $?
