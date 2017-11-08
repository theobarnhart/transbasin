cd /Volumes/data/MOD16/

for year in {2000..2014}; do
	
	for month in {01,02,03,04,05,06,07,08,09,10,11,12}; do
		
		gdalwarp `ls ./tiffs/MOD16A2.A${year}M${month}.h*v*.ET.tiff` ./mosaics/MOD16.ET.A${year}M${month}.tiff
		
	done
done