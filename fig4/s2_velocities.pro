PRO s2_velocities
;
restore, '/home/Eamon/carma/spectra/cde/apj_final/cdecombine_spectra_32_64.sav'
make_ct, ncolors=4
set_plot, 'ps'
!p.font=0
device, file='s2_velocities.eps',/color, bits=24, encaps=2, /landscape
;
arcsec=textoidl('\prime\prime')
;
;bottom left
plot, vel32-20.7, flx10_32, xtitle='!9D!5v (km s!u-1!n) Stellar Rest Frame', chars=1.6, xstyle=1, psym=10, xr=[-20,20], thick=6, /nodata, ystyle=1, yr=[-1, 15], xthick=4, ythick=4, xticklen=0.04 
oplot, vel32-20.7, FLX10_32, psym=10, thick=5
oplot, vel32-20.7, FLX8_32, psym=10, thick=5, color=2
oplot, vel32-20.7, FLX6_32, psym=10, thick=5, color=3
oplot, vel32-20.7, FLX4_32, psym=10, thick=5, color=4
oplot, vel64-20.7, FLX4_64, psym=10, thick=5, color=5
;xyouts, 19.0, 16, '8'+arcsec, charthick=6, charsize=1.6
;
DEVICE, /CLOSE
set_plot, 'x'
; ;
stop
End
