#/bin/bash

set -x

export PEERSTATS=$(/opt/cjdns/tools/peerStats | grep "ESTABLISHED" | wc -l)

if [ "$PEERSTATS" -eq "0" ]; then
	killall cjdroute
	service cjdns restart
fi
