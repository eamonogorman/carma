PRO make_fig1
;
restore, 'ccombine_spectra.sav'
flx64c=flx64
flx32c=flx32
restore, 'dcombine_spectra.sav'
flx64d=flx64
flx32d=flx32
restore, 'ecombine_spectra.sav'
flx64e=flx64
flx32e=flx32
;
!p.multi=[0,1,2]
;
make_ct, ncolors=4
odev_p, 'test'
!p.font=0
;
device, file='/home/Eamon/carma/apjl/fig1/fig1a.eps',/color, bits=24, encaps=0
;
plot, vel64-20.7, flx64c, xtitle='!9D!5v (km s!u-1!n) Stellar Rest Frame', chars=1.5, psym=10, xrange=[-25,25], thick=6, /nodata, ystyle=1, yr=[0, 1.05], xthick=4, ythick=4, Position=[0.25, 0.15, 0.9, 0.40], $
xticklen=0.04, xstyle=8 ;ytickname=['  0','  2', '  4', '  6','  8', '   '], 
oplot, vel64-20.7, flx64c,color=5, psym=10, thick=6
oplot, vel32-20.7, flx32c,color=2, psym=10, thick=6
xyouts, -27.0, 0.9, 'C config', charthick=6, charsize=1.4
;
plot, vel64-20.7, flx64d, ytitle='Flux Density (Jy)', chars=1.5, xstyle=8, psym=10, xr=[-25,25], thick=6, /nodata, ystyle=1, yr=[-0.5, 7.0], xthick=4, ythick=4, Position=[0.25, 0.40, 0.9, 0.64], /NoErase, XTickformat='(A1)', $
xticklen=0.04
oplot, vel64-20.7, flx64d,color=5, psym=10, thick=6
oplot, vel32-20.7, flx32d,color=2, psym=10, thick=6
xyouts, -27.0, 5.8, 'D config', charthick=6, charsize=1.4
;
plot, vel64-20.7, flx64e, chars=1.5, xstyle=1, psym=10, xr=[-30,30], thick=6, /nodata, ystyle=1, yr=[-0.5, 8.5], xthick=4, ythick=4, Position=[0.25,0.64,0.9,0.89],/NoErase,XTickformat='(A1)', xticklen=0.04
oplot, vel64-20.7, flx64e,color=5, psym=10, thick=6
oplot, vel32-20.7, flx32e,color=2, psym=10, thick=6
;
xyouts, 13.0, 7.1, '1.3 km s!u-1!n', color=5, charthick=6, charsize=1.4
xyouts, 13.0, 6.0, '0.65 km s!u-1!n', charthick=6, charsize=1.4, color=2
xyouts, -27.0, 7.1, 'E config', charthick=6, charsize=1.4
;
HELP, calls=s
STAMP, s
DEVICE, /CLOSE
set_plot, 'x'
;

End
