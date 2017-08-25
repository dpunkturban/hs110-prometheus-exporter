#!/bin/bash

if [ "$SHOWHELP" == "true" ]; then
   python /usr/local/bin/hs110-exporter.py -h || exit 1
   exit 0
fi

if [ -z "$HS110IP" ]; then
    echo "Enviroment var 'HS110IP' is required"
    exit -1
fi

if [ -z "$FREQUENCY" ]; then
    FREQUENCY=1
fi

if [ -z "$LISTENPORT" ]; then
    LISTENPORT=8110
fi

python /usr/local/bin/hs110-exporter.py -t $HS110IP -f $FREQUENCY -p $LISTENPORT

