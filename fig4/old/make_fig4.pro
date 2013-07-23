PRO make_fig4
;
restore, '/home/Eamon/carma/spectra/cde/apj_final/cdecombine_spectra.sav'
;
make_ct, ncolors=4
; set_plot, 'ps'
; !p.font=0
; device, file='fig4.eps',/color, bits=24, encaps=2, /landscape
;
arcsec=textoidl('\prime\prime')
;
;bottom left
plot, vel64-20.7, flx8, xtitle='                                          !9D!5v (km s!u-1!n) Stellar Rest Frame', chars=1.6, xstyle=1, psym=10, xr=[-30,30], thick=6, /nodata, ystyle=1, yr=[-1, 20], xthick=4, ythick=4, Position=[0.15, 0.15, 0.50, 0.40], $
xticklen=0.04, xtickname=['  ','20','10', '0', '10','20',' '] 
oplot, vel64-20.7, flx8, psym=10, thick=5
xyouts, 19.0, 16, '8'+arcsec, charthick=6, charsize=1.6
;
;bottom right
plot, vel64-20.7, flx10, chars=1.6, xstyle=1, psym=10, xr=[-30,30], thick=6, /nodata, ystyle=1, yr=[-1.0, 20.0], xthick=4, ythick=4, Position=[0.50, 0.15, 0.85, 0.40], /NoErase, xticklen=0.04,ytickname=[' ',' ', ' ', ' ',' ', ' '], xtickname=['  ','20','10', '0', '10','20',' '] 
oplot, vel64-20.7, flx10, psym=10, thick=5
xyouts, 18.0, 16, '10'+arcsec, charthick=6, charsize=1.6
;
;middle left
plot, vel64-20.7, flx4, chars=1.6, xstyle=1, psym=10, xr=[-30,30], thick=6, /nodata, ystyle=1, yr=[-1, 12], xthick=4, ythick=4, Position=[0.15, 0.40, 0.50, 0.65], xticklen=0.04,/NoErase, xtickname=[' ',' ', ' ', ' ',' ', ' ', '  '], ytitle='Flux Density (Jy)', ytickname=[' ','2', ' ', ' 6',' ', '10', ' ']
oplot, vel64-20.7, flx4, psym=10, thick=5
xyouts, 19.0, 9.5, '4'+arcsec, charthick=6, charsize=1.6
;
;middle right
plot, vel64-20.7, flx6, chars=1.6, xstyle=1, psym=10, xr=[-30,30], thick=6, /nodata, ystyle=1, yr=[-1.0, 12.0], xthick=4, ythick=4, Position=[0.50, 0.40, 0.85, 0.65], /NoErase, xticklen=0.04,ytickname=[' ',' ', ' ', ' ',' ', ' ', '  '], xtickname=[' ',' ', ' ', ' ',' ', ' ', '  ']
oplot, vel64-20.7, flx6, psym=10, thick=5
xyouts, 19.0, 9.5, '6'+arcsec, charthick=6, charsize=1.6
;
;top left
plot, vel64-20.7, flx1, chars=1.6, xstyle=1, psym=10, xr=[-30,30], thick=6, /nodata, ystyle=1, yr=[0, 3.5], xthick=4, ythick=4, Position=[0.15, 0.65, 0.50, 0.90], xticklen=0.04,/NoErase, xtickname=[' ',' ', ' ', ' ',' ', ' ', '  '], ytickname=[' ','0.5', ' ', '1.5',' ', '2.5', ' ', '3.5']
oplot, vel64-20.7, flx1, psym=10, thick=5
xyouts, 19.0, 2.9, '1'+arcsec, charthick=6, charsize=1.6
;
;top right
plot, vel64-20.7, flx2, chars=1.6, xstyle=1, psym=10, xr=[-30,30], thick=6, /nodata, ystyle=1, yr=[0, 3.5], xthick=4, ythick=4, Position=[0.50, 0.65, 0.85, 0.90], /NoErase, xticklen=0.04,ytickname=[' ',' ', ' ', ' ',' ', ' ', '  ', '  '], xtickname=[' ',' ', ' ', ' ',' ', ' ', '  ']
oplot, vel64-20.7, flx2, psym=10, thick=5
xyouts, 19.0, 2.9, '2'+arcsec, charthick=6, charsize=1.6

;
; 
; xyouts, 13.0, 6.0, '0.65 km s!u-1!n', charthick=6, charsize=1.5, color=2
; ;
; DEVICE, /CLOSE
; set_plot, 'x'
; ;

End
