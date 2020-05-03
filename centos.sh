#centos8
#镜像下载
http://mirrors.163.com/

#固化IP
vim /etc/sysconfig/network-scripts/ifcfg-ens33

    #IP的配置方法[none|static|bootp|dhcp]
    BOOTPROTO=static
    #开机启用
    ONBOOT=yes
    #ipv4，子网掩码，网关，DNS
    IPADDR=192.168.44.3
    NETMASK=255.255.255.0
    GATEWAY=192.168.44.2
    DNS1=114.114.114.114
    DNS2=8.8.8.8



