#! /bin/bash
printf "Installing RDP Be Patience... " >&2
{
sudo useradd -m CHROME
sudo adduser CHROME sud
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install nautilus nano -y 
sudo adduser CHROME chrome-remote-desktop
} &> /dev/null &&
printf "\nSetup Complete " >&2 ||
printf "\nNext Step " >&2
printf '\nGo to : https://remotedesktop.google.com/headless " >&2
printf '\nSteps - BEGIN > NEXT > AUTHORISE {Select Account to save RDP} > Copy Command of Debian Linux And"\n'
read -p "Paste Command Here {and Hit ENTER}: " CRP
su - CHROME -c """$CRP"""
printf 'Check https://remotedesktop.google.com/access/ \n\n'
if sudo apt-get upgrade &> /dev/null
then
    printf "\n\nUpgrade Completed " >&2
else
    printf "\n\nError Occured " >&2
fi
    printf "\n\nCode Version -1.20 - Updated - 27th January" >&2
