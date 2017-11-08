cd /Volumes/data/MOD16/

band=:MOD_Grid_MOD16A2:ET_1km
bnd_shrt=ET
prodname=MOD16A2

t1=h09v04
t2=h09v05
t3=h10v04
t4=h10v05

for year in {2000..2014}; do

for month in {01,02,03,04,05,06,07,08,09,10,11,12}; do
	
	tile1=`ls $prodname.A${year}M${month}.$t1*.hdf`
	tile2=`ls $prodname.A${year}M${month}.$t2*.hdf`
	tile3=`ls $prodname.A${year}M${month}.$t3*.hdf`
	tile4=`ls $prodname.A${year}M${month}.$t4*.hdf`

	gdalbuildvrt - -overwrite ./vrt/$prodname.$bnd_shrt.${year}${month}.vrt ./tiffs/$prodname.A${year}M${month}.h*v*tiff

done

done