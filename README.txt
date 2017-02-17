This script was initially created to save time on "digging" stuff and will help you get a cPanel DNS zone from some of the shared servers.
Author: Kate Grechishkina.

The structure of the script is the following: 
	- 1 main "switch" file called "dns" which purpose is to deternine what file will perform the actual "digging". It is neeeded to put this file in your 'scripts' folder created in the home direcotry of your account. 
	- 4 files named dns_s , dns_p, dns_b and dns_h which contain the commands of "digging" itself. Those should be placed in 'scripts/dnses' folder located in home direcotry of your account.

More then detailed installation guide:

1) Connect to your account via SSH.
2) Run "mkdir scripts | chmod 755 scripts" command.
3) Run "cd scripts | mkdir dnses | chmod 755 dnses" command.
3) Connect to your  account using FileZilla (22 port and sftp as connection protocol should be used), upload 'dns' file to newly-created "scripts" folder. Upload dns_s , dns_p, dns_b and dns_h files to "scripts/dnses" folder.
4) Go back to the command line and cd to home directory using "cd ~" command after this we need to recursively change permissions on all files and folders inside scripts folder: "chmod -R -v 755 scripts" for this.
5) Open .bashrc file of your profile. "nano .bashrc" will help you do it.
6) Add the following two lines to this file a save it (Ctrl + X -> type "y" -> press Enter):
PATH="~/scripts/:${PATH}"
export PATH
7) run "source .bashrc"
8) type dns -h and it will output a short help information.