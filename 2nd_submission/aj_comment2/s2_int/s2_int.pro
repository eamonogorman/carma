PRO s2_int
;
set_plot, 'ps'
device, filename='s2_intensity.eps',/color, /encaps
!p.font=0
propto=textoidl('\propto')
prime=textoidl('\prime')
;
make_ct, ncolors=3
;
num=60
flxbeam=dblarr(58)
err=dblarr(58)
int=dblarr(num, 1)
int2=dblarr(num, 1)
dist=dblarr(num)
st_dev=dblarr(num)
a = mrdfits('/home/eamon/backup_27_01_2012/carma/spectra/cde/apj_final/cde.64.final_pb.image.fits',0, header)
;
;1) Dirty Beam Size (after cleaning) in arcsecs
bmax=1.05
bmin=0.83
;
;2) How many pixels fit inside beam (1 pixel =0.1 arcsecs)
fwhmx=bmax*10.0
fwhmy=bmin*10.0
barea=1.133*fwhmx*fwhmy	;in pixels
; 
x0=226	;pixels 
y0=225	;pixels
;
r=(0.2)*10.0	;radius in pixels
r_out=0
For k=0,num-1 do begin
;
r_in=r_out
r_out=r*(k+1)
For i=0,57 do begin
  imag=a[*,*,i]
  ;Getannul, image, xcen, ycen, inradius, outradius, data
  getannul, imag, x0, y0, r_in, r_out, data
  flxbeam[i]=total(data)
  err[i]=stdev(data)
Endfor	;i
npix=n_elements(data)
flxbeam=flxbeam/npix	;gives us Jy beam-1 per pixel
n_beams=npix/barea
;
print, n_beams
int[k,0]=total([flxbeam[16:17],flxbeam[35:39]])
st_dev[k]=max(err)/sqrt(n_beams)
dist[k]=r_out
print, k
;
Endfor ;k
plot, dist/10, 0.15/((dist/10)^2.0), /ylog, /xlog, yr=[0.002,1.1], xtitle='Projected Radius ('+prime+prime+')', /ystyle, xr=[0.1,20],$
ytitle='Normalized Surface Brightness (Arbitrary Units)',background=1,color=0,xthick=4,ythick=4, thick=5, charthick=1.5,charsize=1.2, /nodata, /xstyle
oplot, dist[1:25]/10, 0.15/((dist[1:25]/10)^1.0), color=0,thick=4
;oplot, dist[20:39]/10, 0.22/((dist[20:39]/10)^2), color=0,thick=4
oplot, dist/10, int/max(int), color=2,thick=4
oploterr, dist/10, int/max(int), (st_dev)/max(int), color=2,thick=4
oplot, dist/10, int/max(int), thick=4, psym=sym(1),color=0,symsize=0.6
;
xyouts, 0.7, 0.06, 'I '+propto+' R!u-1!n', color=0, charthick=3, charsize=1.5
xyouts, 0.15, 0.004, 'S2 Flow', color=2, charthick=3, charsize=1.5
;xyouts, 1.3, 0.2, 'Total S1', color=2, charthick=3, charsize=1.5
; 
DEVICE, /CLOSE
set_plot, 'x'
stop
END
