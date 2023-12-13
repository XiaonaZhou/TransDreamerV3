#!/bin/sh
set -eu

# Update the package manager
yum update -y

# Install required packages
yum install -y mesa-libGL-devel
yum install -y libX11
yum install -y java-1.8.0-openjdk
yum install -y xorg-x11-server-utils
yum install -y xorg-x11-server-Xvfb

# Clean up
yum clean all

# Install Python packages
pip3 install minerl==0.4.4

# #!/bin/sh
# set -eu

# apt-get update
# apt-get install -y libgl1-mesa-dev
# apt-get install -y libx11-6
# apt-get install -y openjdk-8-jdk
# apt-get install -y x11-xserver-utils
# apt-get install -y xvfb
# apt-get clean

# pip3 install minerl==0.4.4
