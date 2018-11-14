#!/bin/sh
#coding=uft-8
cd /tmp/
git clone  https://code.fullertontechnik.com/wangxiang/elk-conf.git
rsync -av --delete /tmp/elk-conf/  /opt/elk-conf
rm -rf /tmp/elk-conf
