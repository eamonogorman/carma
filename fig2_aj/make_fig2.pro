PRO make_fig2
;
;
b = mrdfits('/home/eamon/backup_27_01_2012/carma/cdecombine/apj_final/cde.64.final_pb.image.fits',0, header)
rms=[0.033105801791, 0.030112106353, 0.0310347005725, 0.035956017673, 0.0335943885148, 0.0257348548621, 0.021132061258, 0.0210670735687]
vel=string([-9.0, -10.3, -11.6, -12.9, -14.1, -15.3, -16.7, -17.9], format='(g0.3)')
;
loadct,3
;
!p.font=0
;###################################### chan 34 ################################
set_plot, 'ps'
device, file='test_34.ps',/color, bits=24, /encapsulate, xsize=1.5, ysize=1.5, /inches
make_ct, ncolors=3
imag=b[60:380,60:380,34]
tvscl, imag
;
PLOTS, 0.10*321, 0.11*321, thick=2, color=1
PLOTS, 0.10*321+60*321*(0.00311526), 0.11*321, /CONTINUE, thick=2, color=1
xyouts,10,10,'6 arcsec', charthick=2.0, charsize=0.7, color=1
v=[rms[0]*(-2), rms[0]*2.0,rms[0]*4.0, rms[0]*6]
CONTOUR, imag, LEVELS = V, C_LINESTYLE = (V LT 0.0), XSTYLE = 1, YSTYLE = 1, /noerase,c_colors=[3,0,0,0], POSITION=[0.0, 0.0, 1.0, 1.0], c_thick=[1.5,1.5,1.5,1.5], /overplot
xyouts,180,280,'-9.0 km s!u-1!n', charthick=2.0, charsize=0.7, color=1
DEVICE, /CLOSE
set_plot, 'x'
;###################################### chan 35-40 ################################
For i=35,41 do begin
set_plot, 'ps'
device, file='test_'+string(i,format='(g0.3)')+'.ps',/color, bits=24, /encapsulate, xsize=1.5, ysize=1.5, /inches
make_ct, ncolors=3
;
;device, decomposed=0
;
imag=b[60:380,60:380,i]
tvscl, imag
;
v=[rms[i-34]*(-2), rms[i-34]*2,rms[i-34]*4.0, rms[i-34]*6]
CONTOUR, imag, LEVELS = V, C_LINESTYLE = (V LT 0.0) , XSTYLE = 1, YSTYLE = 1, /noerase,c_colors=[3,0,0,0], POSITION=[0.0, 0.0, 1.0, 1.0], c_thick=1.5, /overplot
xyouts,180,280,vel[i-34]+' km s!u-1!n', charthick=2.0, charsize=0.7, color=1	;
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

; channels		lsr		bary			srf		rms(from CASA)
; 1.400000e+01	  2.118036e+01		3.705234e+01		16.3523
; 1.500000e+01	  1.991044e+01		3.578248e+01		15.0825
; 1.600000e+01	  1.864051e+01		3.451262e+01		13.8126
; 1.700000e+01	  1.737058e+01 		3.324277e+01		12.5428
; 1.800000e+01	  1.610066e+01		3.197291e+01		11.2729
; 1.900000e+01	  1.483073e+01		3.070305e+01		10.0030
; 2.000000e+01 	  1.356081e+01		2.943319e+01		8.73319
; 2.100000e+01 	  1.229088e+01		2.816333e+01		7.46333
; 2.200000e+01 	  1.102096e+01		2.689347e+01		6.19347
; 2.300000e+01 	  9.751032e+00		2.562362e+01		4.92362
; 2.400000e+01    8.481107e+00		2.435376e+01		3.65376
; 2.500000e+01 	  7.211181e+00		2.308390e+01		2.38390
; 2.600000e+01    5.941256e+00		2.181404e+01		1.11404
; 2.700000e+01 	  4.671330e+00		2.054418e+01		-0.155821
; 2.800000e+01 	  3.401405e+00 		1.927433e+01		-1.42567	
; 2.900000e+01 	  2.131480e+00		1.800447e+01		-2.69553
; 3.000000e+01    8.615541e-01		1.673461e+01		-3.96539
; 3.100000e+01    -4.083714e-01		1.546475e+01		-5.23525
; 3.200000e+01    -1.678297e+00		1.419489e+01		-6.50511	
; 3.300000e+01    -2.948222e+00		1.292503e+01		-7.77497	
; 3.400000e+01    -4.218148e+00		1.165518e+01		-9.04482	0.033105801791#
; 3.500000e+01    -5.488073e+00		1.038532e+01		-10.3147	0.030112106353#
; 3.600000e+01    -6.757998e+00		9.115460e+00		-11.5845	0.0310347005725#
; 3.700000e+01    -8.027924e+00		7.845602e+00		-12.8544	0.035956017673#
; 3.800000e+01    -9.297850e+00		6.575744e+00 		-14.1243	0.0335943885148#
; 3.900000e+01    -1.056777e+01		5.305885e+00		-15.3941	0.0257348548621#
; 4.000000e+01    -1.183770e+01		4.036027e+00		-16.6640	0.021132061258#
; 4.100000e+01    -1.310763e+01		2.766169e+00		-17.9338	0.0210670735687#	
; 4.200000e+01    -1.437755e+01		1.496311e+00		-19.2037
; 4.300000e+01    -1.564748e+01		2.264527e-01		-20.4735
; 4.400000e+01    -1.691740e+01		-1.043406e+00
; 4.500000e+01    -1.818733e+01		-2.313264e+00
;
DEVICE, /CLOSE
set_plot, 'x'
endfor
;###################################### chan 41 ################################
set_plot, 'ps'
device, file='test_41.ps',/color, bits=24, /encapsulate, xsize=1.5, ysize=1.5, /inches
make_ct, ncolors=3
imag=b[60:380,60:380,41]
tvscl, imag
;
plots, [0.2,0.2]*321, [0.8,0.9]*321, thick=2,  color=1
plots, [0.1,0.2]*321, [0.8,.8]*321, thick=2, color=1
xyouts,0.18*321,0.92*321,'N', charthick=2.0, charsize=0.5, color=1
xyouts,0.052*321,0.78*321,'E', charthick=2.0, charsize=0.5, color=1
v=[rms[7]*(-2), rms[7]*2,rms[7]*4., rms[7]*6]
CONTOUR, imag, LEVELS = V, C_LINESTYLE = (V LT 0.0) , XSTYLE = 1, YSTYLE = 1, /noerase,c_colors=[3,0,0,0], POSITION=[0.0, 0.0, 1.0, 1.0], c_thick=1.5, /overplot
xyouts,180,280,'-17.9 km s!u-1!n', charthick=2.0, charsize=0.7, color=1
DEVICE, /CLOSE
set_plot, 'x'
;
End