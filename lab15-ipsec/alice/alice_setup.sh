# Copy ipsec-tools
cp /hosthome/alice/ipsec-tools.conf /etc/
chown root:root /etc/ipsec-tools.conf
chmod 644 /etc/ipsec-tools.conf

# Copy shared key
cp /hosthome/alice/psk.txt /etc/racoon/
chown root:root /etc/racoon/psk.txt
chmod 644 /etc/racoon/psk.txt

# Copy racoon conf
cp /hosthome/alice/racoon.conf /etc/racoon/
chown root:root /etc/racoon/racoon.conf
chmod 644 /etc/racoon/racoon.conf

# restart services
/etc/init.d/setkey restart
/etc/init.d/racoon restart

# Configure route
ip addr add 172.20.1.0/24 dev eth0
ip route add to 192.168.10.0/24 via 172.20.1.0 src 172.16.1.5

# Ping Bob's pc 
ping 192.168.10.0