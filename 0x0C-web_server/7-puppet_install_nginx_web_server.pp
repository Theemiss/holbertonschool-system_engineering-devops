exec {'/usr/bin/env apt-get update':}
exec {'/usr/bin/env apt-get install -y nginx':}
exec {'/usr/bin/env mkdir -p /var/www/themis/html':}
exec {'/usr/bin/env echo "Holberton School" > /var/www/themis/html/index.html':}
exec {'/usr/bin/env echo "Ceci n\'est pas une page" > /var/www/themis/html/custom_404.html':}
exec {'/usr/bin/env echo "server{
    listen 80 default_server;
    listen [::]:80 default_server;
    root /var/www/themis/html;
    index index.html index.htm;
    server_name ahmed-dev.tech;
    rewrite ^/redirect_me$ https://www.youtube.com/watch?v=dQw4w9WgXcQ permanent;
    error_page 404 /custom_404.html;
}" > /etc/nginx/sites-available/ahmed-dev.tech':}
exec {'/usr/bin/env sudo rm /etc/nginx/sites-enabled/default':}
exec {'/usr/bin/env sudo ln -s /etc/nginx/sites-available/koeusiss.tech /etc/nginx/sites-enabled/':}
exec {'/usr/bin/env sudo service nginx restart':}