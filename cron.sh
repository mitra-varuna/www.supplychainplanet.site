cd /home/sushant/code/supply_chain_planet_site/www.supplychainplanet.site
for i in $(seq 3)
do
	nikola build
done;

s3cmd sync output/ s3://www.supplychainplanet.site/
git add .
git commit -m"New posts"
git push
