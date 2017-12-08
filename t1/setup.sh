# Install 
sudo dnf install --best --allowerasing git gcc libcap openssh libcrypt.x86_64 -y

# Clone 
git clone https://github.com/nikdubois/vsftpd-2.3.4-infected.git

# 
# Adicionar -lcrypt no makefile 
# make 
# make install

# sudo cp vsftpd.conf /etc/
# mudar /etc/vsftp.conf
# listen=YES

# Start vsftpd

# start sshd
# sudo systemctl start sshd

# disable firewall
# sudo systemctl stop firewalld
