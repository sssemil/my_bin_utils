#/bin/bash

set -x

export PUBLIC_KEY="p0fhtlmyfpq27znpww292krkykbwgrcu95pp1rqqw8np7hjfkbv0.k"
export HOSTNAME="l.lrz.sssemil.com"
export PORT=43835
export PEER_NAME=$HOSTNAME
export LOGIN="default-login"
export PASSWORD="711q1x777ktswf1hxt4q1zx4b1kwtud"
export INTERFACE_NUMBER=0
export IP=$(getent hosts $HOSTNAME | awk '{ print $1 }')

#IP="[2001:4ca0:2fff:1::25]"

/opt/cjdns/tools/cexec 'UDPInterface_beginConnection("'$PUBLIC_KEY'", "'$IP':'$PORT'", "'$HOSTNAME'", "'$PASSWORD'", "'$LOGIN'", '$INTERFACE_NUMBER')'
