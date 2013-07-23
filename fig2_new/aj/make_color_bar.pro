PRO make_color_bar
;
!p.font=0
set_plot, 'ps'
device, file='color_bar.ps',/color, bits=24, /encapsulate, xsize=3.0, ysize=1.0, /inches
;
b = mrdfits('/home/eamon/backup_27_01_2012/carma/cdecombine/apj_final/cde.64.final_pb.image.fits',0, header)
x=where(b lt 0.2)
; 
i=34
loadct,3, ncolors=1000
ncolors = 1000
;
loc = [0.05, 0.50, 0.95, 0.60]
bar = BINDGEN(256) # REPLICATE(1B, 10)
   xsize = (loc(2) - loc(0)) * !D.X_VSIZE
   ysize = (loc(3) - loc(1)) * !D.Y_VSIZE 
   xstart = loc(0) * !D.X_VSIZE
   ystart = loc(1) * !D.Y_VSIZE 
bar = BYTSCL(bar, TOP=ncolors-1)
TV, bar, xstart, ystart, XSIZE=xsize, YSIZE=ysize
PLOTS, [loc(0), loc(0), loc(2), loc(2), loc(0)], [loc(1), loc(3), loc(3), loc(1), loc(1)], /NORMAL
; make_ct, ncolors=3
xyouts, 0.38, 0.65, 'Jy beam!u-1!n',color=1
xyouts, 0.84, .36, '+0.2',color=1
xyouts, 0.53, .36, '+0.1'
xyouts, 0.33, .36, '0'
xyouts, 0.05, .36, '-0.1'
; xyouts,0.22,0.85, '+0.20' 
; xyouts,0.22,0.67, '+0.13'
; xyouts,0.22,0.48, '+0.05'
; xyouts,0.22,0.28, '-0.10'
; xyouts,0.22,0.10, '-0.13'
;tvscl, b[*,*,i]<0.2
;make_ct, ncolors=4
;xyouts,0.55,0.9,'-9.0 km s!u-1!n', charthick=2.0, charsize=0.7, color=1
		;
; 	plots, [0.2,0.2], [0.8,0.9], thick=2,  color=1
; 	plots, [0.1,0.2], [0.8,.8], thick=2, color=1
; 	xyouts,0.18,0.92,'N', charthick=2.0, charsize=0.5, color=1
; 	xyouts,0.052,0.78,'E', charthick=2.0, charsize=0.5, color=1
;
; 1 arcsec =1/45 =0.0222222
;PLOTS, 0.15, 0.03, thick=2, color=1
;PLOTS, 0.15+0.088, 0.03, /CONTINUE, thick=2, color=1	
;xyouts,0.06,0.05,'4 arcsec', charthick=2.0, charsize=0.7, color=1	
;
; channels		lsr		bary			srf
; 3.000000e+01    8.615541e-01		1.673461e+01		-3.96539
; 3.100000e+01    -4.083714e-01		1.546475e+01		-5.23525
; 3.200000e+01    -1.678297e+00		1.419489e+01		-6.50511	#
; 3.300000e+01    -2.948222e+00		1.292503e+01		-7.77497	#
; 3.400000e+01    -4.218148e+00		1.165518e+01		-9.04482	#
; 3.500000e+01    -5.488073e+00		1.038532e+01		-10.3147	#
; 3.600000e+01    -6.757998e+00		9.115460e+00		-11.5845	#
; 3.700000e+01    -8.027924e+00		7.845602e+00		-12.8544	#
; 3.800000e+01    -9.297850e+00		6.575744e+00 		-14.1243	#
; 3.900000e+01    -1.056777e+01		5.305885e+00		-15.3941	#
; 4.000000e+01    -1.183770e+01		4.036027e+00		-16.6640	#
; 4.100000e+01    -1.310763e+01		2.766169e+00		-17.9338	#	
; 4.200000e+01    -1.437755e+01		1.496311e+00		-19.2037
; 4.300000e+01    -1.564748e+01		2.264527e-01		-20.4735
; 4.400000e+01    -1.691740e+01		-1.043406e+00
; 4.500000e+01    -1.818733e+01		-2.313264e+00
;
DEVICE, /CLOSE
set_plot, 'x'
; ;
stop
End