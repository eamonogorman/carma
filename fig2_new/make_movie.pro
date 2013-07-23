PRO make_movie
;
a = mrdfits('cde.64.fits',0, header)
;
; Get square root of specific intensity
;
b=dblarr(288,288,58)
For i=0,57 do begin
	For j=0,287 do begin
		For k=0,287 do begin
			If (a[k,j,i] lt 0) then b[k,j,i]=-1.0*sqrt(-1*a[k,j,i]) else b[k,j,i]=sqrt(a[k,j,i])
		Endfor
	Endfor ;j
Endfor	;i
; 
; Create pngs
window, /free, xsize=288, ysize=288
loadct,1
device, decomposed=0
For i=42,33, -1 do begin
	no=string(i)
	t=abs(i-42)
	vel_srf=1.496311e+00-20.7+t*1.26986
	no=STRTRIM(no,1)
	tvscl, b[*,*,i]
	y=string(vel_srf, format='(g0.3)')
	xyouts,0.4,0.9,y+'km s!u-1!n', charthick=2.0, charsize=2.0
		;
	plots, [0.2,0.2], [0.8,0.9], thick=2
	plots, [0.1,0.2], [0.8,.8], thick=2
	xyouts,0.18,0.92,'N', charthick=2.0, charsize=2.0
	xyouts,0.056,0.776,'E', charthick=2.0, charsize=2.0
;
	xyouts,0.6,0.1,'__', charthick=2.0, charsize=2.0	
wait,1.0
	image=screenread(depth=depth)
		If i lt 10 then begin
			write_png, 'channel_0'+no+'.png', image, r,g,b
		Endif else begin
			write_png, 'channel_'+no+'.png', image, r,g,b
		Endelse
Endfor
;
;$ convert -quality 100 *.png Outputfile.mpeg
;
; channels
; -4.083714e-01    4.468859e+01
; -1.678297e+00    4.516645e+01
; -2.948222e+00    5.337597e+01		33	1.292503e+01
; -4.218148e+00    4.604222e+01		34	1.165518e+01
; -5.488073e+00    3.004316e+01		35	1.038532e+01
; -6.757998e+00    3.191278e+01		36	9.115460e+00
; -8.027924e+00    6.025857e+01		37	7.845602e+00 
; -9.297850e+00    5.624945e+01		38	6.575744e+00
; -1.056777e+01    2.658148e+01		39	5.305885e+00
; -1.183770e+01    6.188065e+00		40	4.036027e+00 
; -1.310763e+01    2.631338e+00		41	2.766169e+00
; -1.437755e+01    1.955294e+00		42	1.496311e+00
; -1.564748e+01    -1.853922e-01
; -1.691740e+01    3.304080e+00
;
End