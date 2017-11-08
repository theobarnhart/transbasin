cd /Volumes/data/MOD16/

for fl in `ls *.hdf`; do
	
	base=${fl%.*}
	
	gdalwarp HDF4_EOS:EOS_GRID:${fl}:MOD_Grid_MOD16A2:ET_1km ./tiffs/${base}.ET.tiff
	
done