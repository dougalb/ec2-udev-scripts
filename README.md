ec2-udev-scripts
================

Some udev rules and scripts to enable /dev/disk/by-ebs-volumeid

EC2 Requirements
================

1. boto - https://github.com/boto/boto
2. EC2 IAM Role with ec2:DescribeInstances - http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UsingIAM.html

Setup
=====

1. cp 52-ec2-volid.rules /etc/udev/rules.d
2. cp ec2_dev_2_volid.py /sbin
3. cp ec2blkdev /etc/init.d
4. chkconfig ec2blkdevid on
5. service ec2blkdevid start

Mounting volumes
================

To mount using the /dev/disk/by-ebs-volumeid/vol-xxxxxxx path, you should add _netdev to the options


