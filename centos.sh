#centos8
#镜像下载
http://mirrors.163.com/
https://developer.aliyun.com/mirror/centos

#源码和yum安装软件
1、编译部署存在的问题
编译源码版本升级比较麻烦，编译过程时间长，效率低
编译源码如果优化不合适，反而不如yum的性能好
2、yum，包管理安装问题
官方源相关服务的版本更新的不及时，跟不上新版（第三方源仓库正确性待验证）
yum安装导致服务的目录结构比较零散，不利于维护（老司机除外）
不方便定制相应优化参数

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

#时区
timedatectl set-timezone Asia/Shanghai
