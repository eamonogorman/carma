PRO estim_size_both
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
oplot, v_chan, r_chan[0:10], psym=10, thick=6, color=0
;
size=[4.9, 7.3, 9.3, 10.4, 12.1, 13.7, 14.3,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
oplot, v_chan, size, psym=2, color=2, thick=4, symsize=2
v_chan = -11.2632-4.82806 + 1.26986*DINDGEN(nv)/2.0
size=[4.1, 6.6, 6.9, 8.7, 9.1, 10.0, 11.8,12.5,13.1,13.6,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
oplot, v_chan, size, psym=2, color=4, thick=4
;
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
oplot, v_chan, r_chan[0:9], psym=10, thick=6, color=0
;
size=[3.8,6.9,8.8,10.3,12.6,13.2,-1, -1, -1, -1, -1, -1, -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
oplot, v_chan, size, psym=2, color=2, thick=4, symsize=2
;
v_chan = 18.64-4.82806 - 1.26986*DINDGEN(nv)/2.0
size=[3.5,7.3,8.8,8.7,9.1,11.7,11.9, 13.2, 14.0, -1, -1, -1, -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
oplot, v_chan, size, psym=2, color=4, thick=4
;
xyouts, 7,18,'!9D!5v = 1.3 km s!u-1!n', color=2, charthick=4, charsize=1.5
xyouts, 7,16.5,'!9D!5v = 0.65 km s!u-1!n', color=4, charthick=4, charsize=1.5
;
device, /close
set_plot, 'x'
;
END