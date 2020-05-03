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

#防火墙
    systemctl status/stop/start/enable/disable firewalld

#包管理工具
    yum list    #软件列表
    yum install -y +包名  #下载安装(-y默认直接安装)
    yum update +包名  #更新
    yum remove +包名  #卸载
    yum clean all       #清除全部缓存目录
    yum makecache   #生成新的缓存

