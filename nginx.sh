echo "What is the domain name you want to use? (Example: google.com)"                                                                                                                   
read ccdomain 

mkdir /var/www/$ccdomain

echo "server {
       listen 80;
       listen [::]:80;
       server_name $ccdomain;
       root /var/www/$ccdomain;
       index index.html;
}" > /etc/nginx/sites-available/$ccdomain.conf                                                                                                                   
                                                                                                                                                                  
ln -s /etc/nginx/sites-available/$ccdomain.conf /etc/nginx/sites-enabled/$ccdomain.conf                                                                           

systemctl nginx reload

echo "Your website should now be available at http(s)://$ccdomain" 
