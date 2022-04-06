#cd /etc/init.d/
#vim web.sh      //编写服务脚本，方便管理

#!/bin/bash
VIP=192.168.150.100
case "$1" in
start)
        ifconfig lo:0 $VIP netmask 255.255.255.255 broadcast $VIP
        /sbin/route add -host $VIP dev lo:0
        echo "1" >/proc/sys/net/ipv4/conf/lo/arp_ignore
        echo "2" >/proc/sys/net/ipv4/conf/lo/arp_announce
        echo "1" >/proc/sys/net/ipv4/conf/all/arp_ignore
        echo "2" >/proc/sys/net/ipv4/conf/all/arp_announce
        sysctl -p >/dev/null 2>&1
        echo "RealServer Start OK "
        ;;
stop)
        ifconfig lo:0 down
        route del $VIP /dev/null 2>&1
        echo "0" >/proc/sys/net/ipv4/conf/lo/arp_ignore
        echo "0" >/proc/sys/net/ipv4/conf/lo/arp_announce
        echo "0" >/proc/sys/net/ipv4/conf/all/arp_ignore
        echo "0" >/proc/sys/net/ipv4/conf/all/arp_announce
        echo "RealServer Stopd"
        ;;
*)
        echo "Usage: $0 {start|stop}"
        exit 1
esac
exit 0