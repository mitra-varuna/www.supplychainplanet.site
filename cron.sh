cd /home/sushant/code/supply_chain_planet_site/www.supplychainplanet.site
source /home/sushant/code/planet_site/bin/activate
for i in $(seq 3)
do
	nikola build
done;

echo "Syncing files with s3 \n"
s3cmd sync output/ s3://www.supplychainplanet.site/

echo "Adding new posts to git \n"
git add .
git commit -m"New posts"
git push
deactivate
