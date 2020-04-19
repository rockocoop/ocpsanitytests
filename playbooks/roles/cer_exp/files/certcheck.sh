#!/bin/bash -x
twoweeks=`date +"%Y%m%d" -d "+14 days"`
certexpd=`curl --insecure -v https://$ROUTER_FQDN 2>&1 | grep expire | awk '{print $4,$5,$6,$7}'`
certstrig=`date -d "${certexpd}" "+%Y%m%d"`
if [[ $certstrig > $twoweeks ]]; 

then

                echo "Certificate is OK"
        else
                echo -e "Certificate will be expired soon\nPlease take care!"
        fi

