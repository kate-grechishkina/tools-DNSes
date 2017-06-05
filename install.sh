#!/bin/bash
echo "Welcome to DNSes installation!"
sleep 1; echo "I will check whether you already have 'scripts' directory and if not - create it for you."
sleep 1; echo "Checking:"
sleep 1;
DIRECTORY="/home/$USER/scripts"
if [ -d $DIRECTORY ]; then
    echo "Directory 'scripts' already exists --> moving DNSes files to the 'scripts' folder:"
    sleep 1; echo "In progress..."
else
    echo "Directory ‘scripts’ doesn't exist --> creating 'scripts' directory:";
    sleep 1; echo "In progress..."
    mkdir ~/scripts; chmod 755 ~/scripts
    sleep 1; echo "Directory 'scripts' created --> moving DNSes files to the 'scripts' folder.";
fi
mv dns* READ* ~/scripts;
sleep 1; echo "Files moved."
sleep 1; echo "Changing permissions for 'scripts' folder and files inside of it:"
chmod -R -v 755 ~/scripts;
sleep 1; echo "Permissions changed."
sleep 1; echo "Adding needed PATH variables to '.bashrc' file:"
sleep 1; echo "In progress..."
echo "" >> ~/.bashrc
echo 'PATH="~/scripts/:${PATH}"' >> ~/.bashrc
echo 'export PATH' >> ~/.bashrc
sleep 1; echo "PATH variables added."
sleep 1; echo "INSTALLATION FINISHED, ENJOY!"
echo "=========================HOW-TO USE THIS SCRIPT==========================";
echo "Check zone for domain on SHARED server: dns s servernumber domain.com";
echo "Check zone for domain on BUSINESS server: dns b servernumber domain.com";
echo "Check zone for domain on PREMIUM server: dns p servernumber domain.com";
echo "Check zone for domain on RESELLER server: dns h servernumber domain.com";
echo "=========================================================================";
sleep 1; source ~/.bashrc;
