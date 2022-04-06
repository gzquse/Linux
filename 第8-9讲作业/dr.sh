#cd /etc/init.d/
#vim dr.sh

#!/bin/bash
GW=192.168.150.2
VIP=192.168.150.100
RIP1=192.168.150.13
RIP2=192.168.150.14
case "$1" in
start)
        /sbin/ipvsadm --save > /etc/sysconfig/ipvsadm
        systemctl start ipvsadm
        /sbin/ifconfig ens33:0 $VIP broadcast $VIP netmask 255.255.255.255 broadcast $VIP up
        /sbin/route add -host $VIP dev ens33:0
        /sbin/ipvsadm -A -t $VIP:80 -s rr
        /sbin/ipvsadm -a -t $VIP:80 -r $RIP1:80 -g
        /sbin/ipvsadm -a -t $VIP:80 -r $RIP2:80 -g
        echo "ipvsadm starting --------------------[ok]"
        ;;
stop)
        /sbin/ipvsadm -C
        systemctl stop ipvsadm
        ifconfig ens33:0 down
        route del $VIP
        echo "ipvsamd stoped----------------------[ok]"
         ;;
        status)
        if [ ! -e /var/lock/subsys/ipvsadm ];then
        echo "ipvsadm stoped---------------"
        exit 1
                else
                echo "ipvsamd Runing ---------[ok]"
        fi
        ;;
*)
        echo "Usage: $0 {start|stop|status}"
        exit 1
esac
exit 0

