for basin in `ls /projects/Budyko_vic/data/WSC_basins/HUC8/*.shp`; do
	
	shape=$(basename $basin)	
	base=${shape%.*}
	
	mkdir ./data/MOD16_ET/${base}
	
	for file in `ls /Volumes/data/MOD16/mosaics/*.tiff`; do
	
	tiff=$(basename $file)
	tiffbase=${tiff%.*}

	gdalwarp -t_srs "+proj=utm +zone=13 +ellps=WGS84 +datum=WGS84 +units=m +no_defs" -tr 500 500 -cutline $basin -crop_to_cutline $file ./data/MOD16_ET/${base}/${tiffbase}_${base}.tiff

done
done
