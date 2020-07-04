#!/usr/bin/env bash

sudo add-apt-repository ppa:certbot/certbot

sudo apt install -y python-certbot-nginx

# sudo certbot --nginx -d domainname.com www.dominaname.com
# sudo certbot renew --dry-run