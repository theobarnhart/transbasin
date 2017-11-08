cd /Volumes/data/MOD16

for year in {2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014}; do
	for month in {01,02,03,04,05,06,07,08,09,10,11,12}; do
		
		wget -nH -r --no-parent -w 0.5 -A 'MOD16A2.A*M*.h10v05.*.hdf' http://files.ntsg.umt.edu/data/NTSG_Products/MOD16/MOD16A2_MONTHLY.MERRA_GMAO_1kmALB/Y$year/M$month/
		wget -nH -r --no-parent -w 0.5 -A 'MOD16A2.A*M*.h09v05.*.hdf' http://files.ntsg.umt.edu/data/NTSG_Products/MOD16/MOD16A2_MONTHLY.MERRA_GMAO_1kmALB/Y$year/M$month/
		wget -nH -r --no-parent -w 0.5 -A 'MOD16A2.A*M*.h10v04.*.hdf' http://files.ntsg.umt.edu/data/NTSG_Products/MOD16/MOD16A2_MONTHLY.MERRA_GMAO_1kmALB/Y$year/M$month/
		wget -nH -r --no-parent -w 0.5 -A 'MOD16A2.A*M*.h09v04.*.hdf' http://files.ntsg.umt.edu/data/NTSG_Products/MOD16/MOD16A2_MONTHLY.MERRA_GMAO_1kmALB/Y$year/M$month/
		
	done
done

#full format of a file
#http://files.ntsg.umt.edu/data/NTSG_Products/MOD16/MOD16A2_MONTHLY.MERRA_GMAO_1kmALB/Y2000/M01/MOD16A2.A2000M01.h00v08.105.2013119143849.hdf
	
	
