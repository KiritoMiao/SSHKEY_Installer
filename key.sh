#/bin/sh
echo '============================
      SSH Key Installer
	      V1.0 Alpha
		Author:Kirito
============================'
cd ~
mkdir .ssh
cd .ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAEAQDDiiL0k1kw2Vr+1sh9sKFzpmEd09QjQyXwAG/iyWqfg9Pcdk0nigTS3oE/KqWdtETrvvZSyKiWc4pMuegorilq1VGplfzTYTO3aTIR1XXGPkMdvpkIYGOn0ebpjmyZYmopPf0Pka7ylgyRJanpehayg/b775t9/2iaWiS605gX5Ed7IVT++2occsCbkPQeE6i6zZVQYBKbeXE/oFsM7FUmSttoMMPBe/lsHLzbt1ciJfCoP89xO36HopzlvyGTQOMdwknEJz+VqoFL/8Y058emv/dZeN/G0Hv6emqL4NTX+udtFZWxo2OzOoi9C8f+uvIkjSF25+YS01vwdaBoz+DQ+uPFdGygTrWYV5YeQuhbSj3MfRIk6R62oDyq/QVyfzXt7BddwBW2cztxQEOE2mwAtDYlm2vmK/6+KnR+/7w50oXptsQKf6QxM1xFmSkC2E1WUx7IT/PHrpATeAsvkKl+AhuYn70aaRSpSFKywo7+xh4YSe88iik6Ec2jbCn7DITvcrCEefVovtfLRYVt5UNVMJygfIQWpAx6QElQ2i1x3vMDVEhV99yR1UQ+yRiqRbsQ5vCYnFA7iGSNUqi+fqR0rJqzlWB6YGeR8mHBqJEgwb6DjAfU+LPgj4WVm+pRQe1CYs5LH1XkYiJglEN9ElJ+0VJ1A5dvpXOdcGLYritNaU6o7Ee1mp96QyJ5rCvyXPMihAdiu+9DkmLjf+qzSdkyTfBEYjWQYsbJLNjbC335/hTbi1CV8xJCL0oXn+XQ5nrGlkJ1ktF2oAWzwzkShLfNJ3dgXzhX6Ryslyq/9xKb05KhHWi2fZHyb+N3Sk8wpRCykaN8hbl0QGiPmiIs283BIe8rFnfZOIDpiQyHKzKHXe4Q0jXQJ9rGDx7XT/M4J7Hk7GwD5TosXH9aq5Q5VbCOVT0CkVaPQ7S6jxJp4W0uZt6Lam4CtTHeAzqum4HK498y6thrSGLu/c1XV0gpyYpX3/XWAAOackgNg3O6ueEPrGL7kAMSWQdrl7cL1MG48Vq76RtCKuBP13qlbVkVbgsmsfLoPSF/n5UdYMQlA+gXnJWN7ZX0OUJ67M5jF9lDF15ea3tx8pQdenD3kFdvhM1Ge5Wx/VclVQv3JoXtEQ2BOXEtGvg5qrufyTLbF3UdscpZUvPBQ76AYd/REbN+5Ja68/ZY7tH5gNsakPju+i5ts+IyWVyGVKmbiF9sKkE+DfvPwLyJVb78LzMtpQZk1Jq2D/HmhT4iswOS8suteXrytKz5AWUa1QZxlA/Lhs2/NZ3oVgLyrA4bDqXJV8xq7kGdGXQ4GhZX+nVAI2ngRwVRr1Qk5KI/SWlHf8p3dAHqEvtr5L3QVWOgh7ObHsnqtxQr root@debian' > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 600 .ssh
cd /etc/ssh/
sed -i '/PasswordAuthentication/s/#PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config

service sshd restart
service ssh restart
