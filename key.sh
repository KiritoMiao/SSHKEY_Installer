#/bin/sh
echo '============================
      SSH Key Installer
	      V1.0 Alpha
		Author:Kirito
============================'
cd ~
mkdir .ssh
cd .ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyjhmEbiU469K3lA/oUc4UK+hDkyO9B+twdlpzTe6K5hYDJbrf0XxDe5z9mlmhvbQaDOSJj185hffR3hFk1VxHU4tRHZaCxDmrOA+PLfRX0P9H2fziYPuy/AsgwZAT+vK3JGNGJm+2+WJtH8POwn1q2f4uzsNAgIAueOgyUojHSvXgrbrJ3ehMqt89Gkz4spr8DxGpMGelPqqQ8Z2aCigbt10CpoC6KYTka8TphiwYNjyKzYOc+eEeYwrve7w3RSIA8D83a1RNC7j7ueONU5AmGVQz0r7LSskdJB40CcejkWx0VT0yTaj+hsZB7wsGETwYEIVD0SPMeQe05HAiEMkN root@cn1.kirito.ml' > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 600 .ssh
cd /etc/ssh/
sed -i '/PasswordAuthentication/s/#PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config

service sshd restart
service ssh restart
