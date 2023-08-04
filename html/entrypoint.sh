#!/bin/bash

# If a website variable is provided, move the corresponding site's content
if [ "$WEBSITE" == "website1" ]; then
    mv /websites/website1 /var/www/html/
    WEBSITE_PATH="/website1"
    sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/html\/website1/' /etc/apache2/sites-available/000-default.conf
elif [ "$WEBSITE" == "website2" ]; then
    mv /websites/website2 /var/www/html/
    WEBSITE_PATH="/website2"
    sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/html\/website2/' /etc/apache2/sites-available/000-default.conf
elif [ "$WEBSITE" == "website3" ]; then
    mv /websites/website3 /var/www/html/
    WEBSITE_PATH="/website3"
    sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/html\/website3/' /etc/apache2/sites-available/000-default.conf
fi

# Remove the default index.html file
rm /var/www/html/index.html

# Start Apache in the foreground
apachectl -DFOREGROUND

