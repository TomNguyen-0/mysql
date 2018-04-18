load data
	infile rainfall.csv
	replace into table rainfall
	fields terminated by ','
	(year,jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec,tot,next1,next2,next3,next4,next5,next6,seas)