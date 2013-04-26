ec2-udev-scripts
================

Some udev rules and scripts to enable /dev/disk/by-ebs-volumeid

EC2 Requirements
================

1. boto - https://github.com/boto/boto
2. EC2 IAM Role with ec2:DescribeInstances - http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UsingIAM.html

Setup
=====

1. sudo cp 52-ec2-volid.rules /etc/udev/rules.d
2. sudo cp ec2_dev_2_volid.py /sbin
3. sudo cp ec2blkdev /etc/init.d
4. sudo chkconfig ec2blkdev on
5. sudo service ec2blkdev start

Mounting volumes
================

To mount using the /dev/disk/by-ebs-volumeid/vol-xxxxxxx path, you should add _netdev to the options


