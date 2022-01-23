#!/bin/bash

sudo nft add rule inet mullvad output position 15 ip6 daddr 200::/7 accept
sudo nft add rule inet mullvad input ip6 saddr 200::/7 accept 
