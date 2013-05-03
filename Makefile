install:
	install -m 744 52-ec2-volid.rules /etc/udev/rules.d
	install -m 744 ec2_dev_2_volid.py /sbin
	install -m 744 ec2blkdev /etc/init.d