# First, need to correct values, if needed, then upload images to a Google Cloud bucket.
# Then, when you put this script into a folder of SIMS images that have been uploaded, this parses the date, initiates the upload to EE and sets the date
# This closed Disalexi issue hase more sample code, including code for the previous steps: https://github.com/ssj-delta-cu/ssj-disalexi/issues/1

re="(.{2})(.{2})(.{2})\.tif"
for i in *.tif; do
	if [[ $i =~ $re ]] ; then
		month=${BASH_REMATCH[1]}
		day=${BASH_REMATCH[2]}
		year=20${BASH_REMATCH[3]};
		d=`date --date="$year-$month-$day" --iso`
		earthengine upload image --asset_id=users/ucd-cws-ee-data/ssj-delta-cu/ssj-sims/et_daily/$d --time_start="$d" --pyramiding_policy=mean --nodata_value=-32767 gs://earth-engine-staging/updated/$i; 
	fi
done