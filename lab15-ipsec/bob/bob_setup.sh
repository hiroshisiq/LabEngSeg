# Copy ipsec-tools
cp /hosthome/bob/ipsec-tools.conf /etc/
chown root:root /etc/ipsec-tools.conf
chmod 644 /etc/ipsec-tools.conf

# Copy shared key
cp /hosthome/bob/psk.txt /etc/racoon/
chown root:root /etc/racoon/psk.txt
chmod 644 /etc/racoon/psk.txt

# Copy racoon conf
cp /hosthome/bob/racoon.conf /etc/racoon/
chown root:root /etc/racoon/racoon.conf
chmod 644 /etc/racoon/racoon.conf

# restart services
/etc/init.d/setkey restart
/etc/init.d/racoon restart

# Configure route
ip addr add 192.168.10.0/24 dev eth0
ip route add to 172.20.1.0/24 via 192.168.10.0 src 172.16.1.3