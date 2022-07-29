#!/bin/bas
amazon-linux-extras install ansible2 -y
amazon-linux-extras install python3.8 -y
pip3 install boto3
aws s3 cp s3://bucket/ebs.yaml /tmp/ebs.yaml
ansible-playbook /tmp/ebs.yaml