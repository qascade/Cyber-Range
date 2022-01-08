#! /bin/bash 

docker context use cyber-range-aci
docker --context cyber-range-aci run qascade/rev_engg_kali:0.5.0 
