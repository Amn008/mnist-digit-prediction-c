echo "This script sets up enviorment for Debian Based Linux .";
echo "If alredy done proceed with ./predictor to run compiled Program."
sleep 15s;
echo "Installing Required packages...";

sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
sudo apt-get install libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev
sudo apt-get install libgtk2.0-dev
sudo apt-get install figlet toilet

# download opencv-2.4.13.4
wget https://github.com/opencv/opencv/archive/2.4.13.4.zip -O opencv-2.4.13.4.zip
unzip opencv-2.4.13.4.zip
cd opencv-2.4.13.4
mkdir release
cd release

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..


make
sudo make install
