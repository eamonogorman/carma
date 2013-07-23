PRO make_fig4
;
restore, '/home/Eamon/carma/spectra/cde/apj_final/cdecombine_spectra_32_64.sav'
;
make_ct, ncolors=4
set_plot, 'ps'
!p.font=0
device, file='fig4.eps',/color, bits=24, encaps=2, /landscape
;
arcsec=textoidl('\prime\prime')
;
;bottom left
plot, vel64-20.7, flx8_64, xtitle='                                          !9D!5v (km s!u-1!n) Stellar Rest Frame', chars=1.6, xstyle=8, psym=10, xr=[-25,25], thick=6, /nodata, ystyle=1, yr=[-1, 15], xthick=4, ythick=4, Position=[0.2, 0.15, 0.45, 0.40], $
xticklen=0.04, xtickname=['  ','-20  ','-10 ', '0', '10','20',' '] 
oplot, vel64-20.7, flx8_64, psym=10, thick=5
xyouts, 19.0, 11.5, '8'+arcsec, charthick=6, charsize=1.6
;
;bottom right
plot, vel64-20.7, flx10_64, chars=1.6, xstyle=8, psym=10, xr=[-25,25], thick=6, /nodata, ystyle=1, yr=[-1.0, 15.0], xthick=4, ythick=4, Position=[0.45, 0.15, 0.7, 0.40], /NoErase, xticklen=0.04,ytickname=[' ',' ', ' ', ' ',' ', ' '], xtickname=['  ','-20  ','-10 ', '0', '10','20',' '] 
oplot, vel64-20.7, flx10_64, psym=10, thick=5
xyouts, 18.0, 11.5, '10'+arcsec, charthick=6, charsize=1.6
;
;middle left
plot, vel64-20.7, flx4_64, chars=1.6, xstyle=8, psym=10, xr=[-25,25], thick=6, /nodata, ystyle=1, yr=[-1, 8.5], xthick=4, ythick=4, Position=[0.20, 0.40, 0.45, 0.65], xticklen=0.04,/NoErase, xtickname=[' ',' ', ' ', ' ',' ', ' ', '  '], ytitle='Flux Density (Jy)', ytickname=[' ','2', ' ', ' 6',' ', '10', ' ']
oplot, vel64-20.7, flx4_64, psym=10, thick=5
xyouts, 19.0, 6.5, '4'+arcsec, charthick=6, charsize=1.6
;
;middle right
plot, vel64-20.7, flx6_64, chars=1.6, xstyle=8, psym=10, xr=[-25,25], thick=6, /nodata, ystyle=1, yr=[-1.0, 8.5], xthick=4, ythick=4, Position=[0.45, 0.40, 0.7, 0.65], /NoErase, xticklen=0.04,ytickname=[' ',' ', ' ', ' ',' ', ' ', '  '], xtickname=[' ',' ', ' ', ' ',' ', ' ', '  ']
oplot, vel64-20.7, flx6_64, psym=10, thick=5
xyouts, 19.0, 6.5, '6'+arcsec, charthick=6, charsize=1.6
;
;top left
plot, vel64-20.7, flx1_64, chars=1.6, xstyle=8, psym=10, xr=[-25,25], thick=6, /nodata, ystyle=1, yr=[0, 2.5], xthick=4, ythick=4, Position=[0.20, 0.65, 0.45, 0.90], xticklen=0.04,/NoErase, xtickname=[' ',' ', ' ', ' ',' ', ' ', '  '], ytickname=[' ','0.5', ' ', '1.5',' ', '2.5', ' ', '3.5']
oplot, vel64-20.7, flx1_64, psym=10, thick=5
hline, 2.499, thick=4,color=0
xyouts, 19.0, 2.0, '1'+arcsec, charthick=6, charsize=1.6
;
;top right
plot, vel64-20.7, flx2_64, chars=1.6, xstyle=8, psym=10, xr=[-25,25], thick=6, /nodata, ystyle=1, yr=[0, 2.5], xthick=4, ythick=4, Position=[0.45, 0.65, 0.7, 0.90], /NoErase, xticklen=0.04,ytickname=[' ',' ', ' ', ' ',' ', ' ', '  ', '  '], xtickname=[' ',' ', ' ', ' ',' ', ' ', '  ']
oplot, vel64-20.7, flx2_64, psym=10, thick=5
hline, 2.499, thick=4,color=0
xyouts, 19.0, 2.0, '2'+arcsec, charthick=6, charsize=1.6

;
; 
; xyouts, 13.0, 6.0, '0.65 km s!u-1!n', charthick=6, charsize=1.5, color=2
; ;
DEVICE, /CLOSE
set_plot, 'x'
; ;

End
