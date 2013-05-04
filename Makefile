install:
	install -m 744 52-ec2-volid.rules /etc/udev/rules.d
	install -m 744 ec2_dev_2_volid.py /sbin
	install -m 744 ec2blkdev /etc/init.d
	install -m 744 attachVolume.py /usr/local/sbin
	chkconfig ec2blkdev on
	service chkconfig start

uninstall:
	chkconfig ec2blkdev --del
	rm -v /etc/udev/rules.d/52-ec2-volid.rules
	rm -v /sbin/ec2_dev_2_volid.py
	rm -v /etc/init.d/ec2blkdev
	rm -v /usr/local/sbin/attachVolume.py