sudo apt update
sudo apt upgrade

sudo apt install git vim compizconfig-settings-manger unity-tweak-tool
cp -r vim vimrc ~
mv ~/vim ~/.vim
mv ~/vimrc ~/.vimrc

# install ubuntu tweak
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
sudo apt-get update
sudo apt-get install ubuntu-tweak

# install flatulous theme
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install flatabulous-theme

# get flat icons
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install ultra-flat-icons

git config --global user.email "danbudanov@gmail.com"
git config --global user.name "Daniil Budanov"

