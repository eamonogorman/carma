PRO make_fig1_final
;
restore, '/home/Eamon/carma/spectra/c_config/apj_final/c_4_combine_spectra.sav'
flx64c=flx64
flx32c=flx32
restore, '/home/Eamon/carma/spectra/d_config/apj_final/d_4_combine_spectra.sav'
flx64d=flx64
flx32d=flx32
restore, '/home/Eamon/carma/spectra/e_config/apj_final/e_4_combine_spectra.sav'
flx64e=flx64
flx32e=flx32
;
!p.multi=[0,1,2]
;
make_ct, ncolors=4
odev_p, 'test'
!p.font=0
;
device, file='fig1_final.eps',/color, bits=24, encaps=0
device, ysize=26.0
device, xsize=19.0
device, yoffset=0.1, xoffset=0.1
;
plot, vel64-20.7, flx64c, xtitle='!9D!5v (km s!u-1!n) Stellar Rest Frame', chars=1.5, psym=10, xrange=[-25,25], thick=6, /nodata, ystyle=1, yr=[0, 2.3], xthick=4, ythick=4, Position=[0.25, 0.15, 0.9, 0.40], $
xticklen=0.04, xstyle=8 ;ytickname=['  0','  2', '  4', '  6','  8', '   '], 
oplot, vel64-20.7, flx64c,color=5, psym=10, thick=6
oplot, vel32-20.7, flx32c,color=2, psym=10, thick=6
xyouts, -28.0, 1.9, 'C config', charthick=6, charsize=1.4
; vline, -10, thick=6, linestyle=2
; vline, +11, thick=6, linestyle=2
; vline, -17, thick=6, linestyle=2
; vline, +14, thick=6, linestyle=2
;
plot, vel64-20.7, flx64d, ytitle='Flux Density (Jy)', chars=1.5, xstyle=8, psym=10, xr=[-25,25], thick=6, /nodata, ystyle=1, yr=[-0.5, 5.5], xthick=4, ythick=4, Position=[0.25, 0.40, 0.9, 0.64], /NoErase, XTickformat='(A1)', $
xticklen=0.04
oplot, vel64-20.7, flx64d,color=5, psym=10, thick=6
oplot, vel32-20.7, flx32d,color=2, psym=10, thick=6
xyouts, -28.0, 4.4, 'D config', charthick=6, charsize=1.4
; vline, -10, thick=6, linestyle=2
; vline, +11, thick=6, linestyle=2
; vline, -17, thick=6, linestyle=2
; vline, +14, thick=6, linestyle=2
;
plot, vel64-20.7, flx64e, chars=1.5, xstyle=1, psym=10, xr=[-30,30], thick=6, /nodata, ystyle=1, yr=[-0.5, 4.5], xthick=4, ythick=4, Position=[0.25,0.64,0.9,0.89],/NoErase,XTickformat='(A1)', xticklen=0.04
oplot, vel64-20.7, flx64e,color=5, psym=10, thick=6
oplot, vel32-20.7, flx32e,color=2, psym=10, thick=6
; vline, -10, thick=6, linestyle=2
; vline, +11, thick=6, linestyle=2
; vline, -17, thick=6, linestyle=2
; vline, +14, thick=6, linestyle=2
;
xyouts, 15.0, 3.7, '1.3 km s!u-1!n', color=5, charthick=6, charsize=1.4
xyouts, 15.0, 3.2, '0.65 km s!u-1!n', charthick=6, charsize=1.4, color=2
xyouts, -28.0, 3.7, 'E config', charthick=6, charsize=1.4
;
DEVICE, /CLOSE
set_plot, 'x'
;
End
