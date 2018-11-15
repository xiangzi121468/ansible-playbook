#!/bin/bash
BRANCH=$1
cd /tmp/
git clone https://code.fullertontechnik.com/ops/ansible-dev.git -b $BRANCH
rsync -av --delete /tmp/ansible-dev/ /etc/ansible/
rm -rf /tmp/ansible-dev
