ec2-udev-scripts
================

Some udev rules and scripts to enable /dev/disk/by-ebs-volumeid

EC2 Requirements
================

1. boto - https://github.com/boto/boto
2. EC2 IAM Role with ec2:DescribeInstanceAttribute - http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UsingIAM.html

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

[ec2-user@ip-10-244-161-112 ~]$ cat /etc/fstab
#
LABEL=/     /           ext4    defaults,noatime  1   1
tmpfs       /dev/shm    tmpfs   defaults        0   0
devpts      /dev/pts    devpts  gid=5,mode=620  0   0
sysfs       /sys        sysfs   defaults        0   0
proc        /proc       proc    defaults        0   0
/dev/sda3	none	swap	sw,comment=cloudconfig	0	0
/dev/disk/by-ebs-volumeid/vol-eaa74883 /mnt/ebs ext4 defaults,noatime,_netdev 0 0
[ec2-user@ip-10-244-161-112 ~]

