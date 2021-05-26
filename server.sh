#!/bin/sh
apt update
apt --yes install teeworlds-server 
teeworlds-server -f autoexe.cfg
