PRO estim_size
;
prime=textoidl('\prime')
!p.font=0
make_ct, ncolors=3
set_plot, 'ps'
device, filename='s2_size.eps', /color, /encapsul
;##################################### Blue Side ################################################
v_s = 17.0	;shell velocity
; set velocity scale of line
nv = 14L	;no of channels
v_chan = -16.7 + 1.26986*DINDGEN(nv)
;PRINT, ' MinMax V (kms-1) ', MINMAX(vchan)
; Assume maximum radius of shell
r_s = 17.0
; Now calculate radius of shell for each channel
r_chan=r_s*sin(acos(v_chan/v_s))
;
plot, v_chan, r_chan, psym=10, background=1, ytitle='S2 Radius (arcsec)', chars=1.5, thick=6, xthick=4, ythick=4, color=0, /nodata, xr=[-20,20], xtitle='!9D!5v (km s!u-1!n) Stellar Rest Frame'
oplot, v_chan, r_chan, psym=10, thick=6, color=2
;
size=[4.9, 7.3, 9.3, 10.4, 12.1, 13.7, 14.3,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
oplot, v_chan, size, psym=2, color=2, thick=4
;
;############# now oplot with a v_rad of 21.7 km s-1
;
v_s = 18.0	;shell velocity
; set velocity scale of line
nv = 14L	;no of channels
v_chan = -17.7 + 1.26986*DINDGEN(nv)
;PRINT, ' MinMax V (kms-1) ', MINMAX(vchan)
; Assume maximum radius of shell
r_s = 17.0
; Now calculate radius of shell for each channel
r_chan=r_s*sin(acos(v_chan/v_s))
;
oplot, v_chan, r_chan, psym=10, thick=6, color=3
oplot, v_chan, size, psym=2, color=3, thick=3
;
;############# now oplot with a v_rad of 19.7 km s-1
;
v_s = 16.0	;shell velocity
; set velocity scale of line
nv = 14L	;no of channels
v_chan = -15.7 + 1.26986*DINDGEN(nv)
;PRINT, ' MinMax V (kms-1) ', MINMAX(vchan)
; Assume maximum radius of shell
r_s = 17.0
; Now calculate radius of shell for each channel
r_chan=r_s*sin(acos(v_chan/v_s))
;
oplot, v_chan, r_chan, psym=10, thick=6, color=4
oplot, v_chan, size, psym=2, color=4, thick=3
; ################################### Red Side ####################################################
; set velocity scale of line
v_s = 14.0	;shell velocity
nv = 12L	;no of channels
v_chan = +13.8 - 1.26986*DINDGEN(nv)
;PRINT, ' MinMax V (kms-1) ', MINMAX(vchan)
;
; Assume maximum radius of shell
r_s = 16.0
;
; Now calculate radius of shell for each channel
r_chan=r_s*sin(acos(v_chan/v_s))
;

oplot, v_chan, r_chan, psym=10, thick=6, color=2
size=[3.8,6.9,8.8,10.3,12.6,13.2,-1, -1, -1, -1, -1, -1, -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
oplot, v_chan, size, psym=2, color=2, thick=4
;
;############# now oplot with a v_rad of 21.7 km s-1
;
v_s = 13.0	;shell velocity
; set velocity scale of line
nv = 12L	;no of channels
v_chan = +12.8 - 1.26986*DINDGEN(nv)
;PRINT, ' MinMax V (kms-1) ', MINMAX(vchan)
; Assume maximum radius of shell
r_s = 16.0
; Now calculate radius of shell for each channel
r_chan=r_s*sin(acos(v_chan/v_s))
;
oplot, v_chan, r_chan, psym=10, thick=6, color=3
oplot, v_chan, size, psym=2, color=3, thick=4
;
;############# now oplot with a v_rad of 19.7 km s-1
;
v_s = 15.0	;shell velocity
; set velocity scale of line
nv = 12L	;no of channels
v_chan = +14.8 - 1.26986*DINDGEN(nv)
;PRINT, ' MinMax V (kms-1) ', MINMAX(vchan)
; Assume maximum radius of shell
r_s = 16.0
; Now calculate radius of shell for each channel
r_chan=r_s*sin(acos(v_chan/v_s))
;
oplot, v_chan, r_chan, psym=10, thick=6, color=4
oplot, v_chan, size, psym=2, color=4, thick=4
xyouts, -6,10, 'v!drad!n=20.7 km s!u-1!n',color=2
xyouts, -6,8, 'v!drad!n=21.7 km s!u-1!n',color=3
xyouts, -6,6, 'v!drad!n=19.7 km s!u-1!n',color=4
device, /close
set_plot, 'x'
;
END