#!/bin/bash

#Get the necessary components
apt-get update
apt-get install xfce4 xfce4-terminal tightvncserver dbus-x11 -y
apt-get install xfe -y
apt-get clean

#Setup the necessary files
mkdir ~/.vnc
wget https://raw.githubusercontent.com/DevrdxDev/KaliLinux1/refs/heads/main/xstartup --no-check-certificate -P ~/.vnc/
wget https://raw.githubusercontent.com/DevrdxDev/KaliLinux1/refs/heads/main/vncserver-start --no-check-certificate -P /usr/local/bin/
wget https://raw.githubusercontent.com/DevrdxDev/KaliLinux1/refs/heads/main/vncserver-stop --no-check-certificate -P /usr/local/bin/

chmod +x ~/.vnc/xstartup
chmod +x /usr/local/bin/vncserver-start
chmod +x /usr/local/bin/vncserver-stop

echo " "
echo "You can now start vncserver by running vncserver-start"
echo " "
echo "It will ask you to enter a password when first time starting it."
echo " "
echo "The VNC Server will be started at 127.0.0.1:5901"
echo " "
echo "You can connect to this address with a VNC Viewer you prefer"
echo " "
echo "Connect to this address will open a window with Xfce4 Desktop Environment"
echo " "
echo " "
echo " "
echo "Running vncserver-start"
echo " "
echo " "
echo " "
echo "To Kill VNC Server just run vncserver-stop"
echo " "
echo " "
echo " "

echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile

vncserver-start
