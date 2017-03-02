#DNSes

###DESCRIPTION:
This script was initially created to save time on "digging" stuff and will help you get a cPanel DNS zone from some our shared servers.

###INSTALLATION:
1) Clone a repo from GitHub:
```shell
git clone https://github.com/kate-grechishkina/tools-DNSes.git; cd tools-DNSes
```
2) Execute the installation file:
```shell
sh install.sh
```
3) Navigate to your home directory and remove unnecessary file:
```shell
cd ~; rm -rf tools-DNSes/
```
4) Start using.

###USAGE:
Check the zone for domain on:
- SHARED server: dns s servernum domain.com";
- BUSINESS server: dns b servernum domain.com";
- PREMIUM server: dns p servernum domain.com";
- RESELLER server: dns h servernum domain.com";

###SCRIPT STRUCTURE:
- 1 main "switch" file called "dns" which purpose is to deternine what file will perform the actual "digging". It is located in your 'scripts' folder created in the home directory of your account. 
- 4 files named dns_s , dns_p, dns_b and dns_h which contain the commands of "digging" itself. Those are located in 'scripts/dnses' folder located in home direcotry of your account.

###AUTHOR: Kate Grechishkina.
