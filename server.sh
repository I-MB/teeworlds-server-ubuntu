#!/bin/bash

CHARS="qwertyuiopasdfghjklzxcvbnm1234567890"

if [ "$1" = "setup" ]; then
    apt update
    apt --yes install teeworlds-server 
elif [ "$1" = "gen_pass" ]; then
    for i in {1..6}; do
        x=$x${CHARS:$RANDOM%${#CHARS}:1}
    done
    echo "password is: $x"
    sed -i "s/\(password\).*/\1 ${x}/" autoexe.cfg
elif [ "$1" = "run" ]; then
    teeworlds-server -f autoexe.cfg
else
    echo "use \`$0 setup\` to setup the server"
    echo "use \`$0 gen_pass\` to generate random password"
    echo "use \`$0 run\` to run the server"
fi
