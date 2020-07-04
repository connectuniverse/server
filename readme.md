# Server installation and related stuff

### Install PHP, Nginx, MySQL for Laravel

For the installation run the following script

```
./18.04/install.sh
```

>>> Note:: the installation will ask for DB password.
>>> Don't forget to note the password for the fucture use.

### Setup site by copying the default config

Copy `common/simple` to `/etc/nginx/site-available` and update domain path to use the correct location.

>>> Normally, I deleted the default configs from `/etc/nginx/site-available` and `/etc/nginx/site-enabled`.

And run the following command to create symbolic

```
sudo ln -s /etc/nginx/sites-available/ /etc/nginx/sites-enabled/
```

### Setup HTTPS with Let's Encrypt Certbot

If this is the first time setting up, run the following script to install certbot.

```
./18.04/letencrypt.sh
```

Add domain like the following

```
sudo certbot --nginx -d domainname.com www.dominaname.com
sudo certbot renew --dry-run
```

### Laravel storage permission

Don't forget to update stoage permission like the following for your Laravel app storage.

```
sudo chgrp -R www-data storage bootstrap/cache && sudo chmod -R ug+rwx storage bootstrap/cache
```