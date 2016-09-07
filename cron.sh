cd /home/sushant/code/www.supplychainplanet.site
nikola build
nikola build
nikola build

s3cmd output/ s3://www.supplychainplanet.site/
git add .
git commit -m"New posts"
git push
