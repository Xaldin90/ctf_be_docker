#!/bin/bash

/etc/init.d/apache2 start

cd /tmp/
git clone https://github.com/Xaldin90/ctf_be.git
mv ctf_be /var/www/html/ctf2/
cd /var/www/html/ctf2/
rm -r .git
rm .gitignore
mv backend/ /var/www/html/ctf_be/
mv apacheconfig/apache2.conf /etc/apache2/apache2.conf
rm -r apacheconfig

a2enmod rewrite
a2enmod actions

/etc/init.d/apache2 restart


/usr/sbin/sshd -D