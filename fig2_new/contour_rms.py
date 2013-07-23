#
vis='/home/eamon/backup_27_01_2012/carma/cdecombine/apj_final/cde.64.final_pb.image.fits'
for x in range (34,42):
	y=str(x)
	xstat=imstat(vis, chans=y) 
	#print xstat['rms'][0] ,'image'
	print x, xstat['rms'][0]

