#! /bin/bash

# Make Instance Ready for Remote Desktop or RDP

b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'

clear

# Branding

printf """$c$b
      _____      _       _         _    _            _  
     / ____|    | |     | |       | |  | |          | | 
    | |     ___ | | __ _| |__     | |__| | __ _  ___| | _____ 
    | |    / _ \| |/ _\` | '_ \    |  __  |/ _\` |/ __| |/ / __|
    | |___| (_) | | (_| | |_) |   | |  | | (_| | (__|   <\__ \\
     \_____\___/|_|\__,_|_.__/    |_|  |_|\__,_|\___|_|\_\___/ 
    $r  By Pradyumna Krishna © 2020 $c Edited by https://fb.com/thuong.hai.581 (v3)
      Github : https://github.com/PradyumnaKrishna/Colab-Hacks          
$endc$enda""";



# Used Two if else type statements, one is simple second is complex. So, don't get confused or fear by seeing complex if else statement '^^.


# Install CrossOver (Run exe on linux)

printf "$g$b    Installing CrossOver $endc$enda" >&2
{
    wget https://media.codeweavers.com/pub/crossover/cxlinux/demo/crossover_20.0.2-1.deb
    sudo dpkg -i crossover_20.0.2-1.deb
    sudo apt install --assume-yes --fix-broken
} &> /dev/null &&
printf "\r$c$b    CrossOver Installed $endc$enda\n" >&2 ||
printf "\r$r$b    Error Occured $endc$enda\n" >&2
