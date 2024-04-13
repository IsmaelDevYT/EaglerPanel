sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt auto-clean -y
sudo apt-get install default-jdk
cd server
sdk install java 17.0.9-amzn
wget -O server.jar https://api.purpurmc.org/v2/purpur/1.17.1/1428/download
