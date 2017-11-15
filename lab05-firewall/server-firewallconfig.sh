#!/bin/bash

# Delete all rules from filter (default), nat (address) and mangle (special rules)
iptables -F
iptables -F -t nat
iptables -F -t mangle

# Append postrouting masquerade rule on nat allowing other computers in the 
# same network connected to this server to access internet  
# eth1 is the servidor interface with ther internet provider 
iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE

# Append rule for redirect tcp packages received in port 21 to E3 pc
iptables -t nat -A PREROUTING -p tcp --dport 21 -j DNAT --to 10.1.1.13

# Append rule for redirect tcp packeges received in port 22 to E1 pc
iptables -t nat -A PREROUTING -p tcp --dport 22 -j DNAT --to 10.1.1.11

# Filter: reject all packages received in port 20
iptables -A INPUT -p tcp --dport 20 -j REJECT