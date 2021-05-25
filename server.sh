#!/bin/sh
apt update
apt--yes --forces-yes install teeworlds-server 
teeworlds-server -f autoexe.cfg
