#/bin/sh
echo '============================
      SSH Key Installer
	      V1.0 Alpha
		Author:Kirito
============================'
cd ~
mkdir .ssh
cd .ssh
curl https://github.com/$1.keys > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 600 .ssh
cd /etc/ssh/
sed -i '/PasswordAuthentication/s/#PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config
sed -i '/RSAAuthentication/s/#RSAAuthentication yes/RSAAuthentication yes/g' sshd_config
sed -i '/PubkeyAuthentication/s/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' sshd_config
sed -i '/PasswordAuthentication/s/PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config
service sshd restart
service ssh restart
