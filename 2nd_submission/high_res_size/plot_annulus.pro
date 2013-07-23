PRO plot_annulus
;
make_ct, ncolors=3
!p.font=0
; set_plot, 'ps'
; ;
; device, file='annulus_flx_red.eps',/color, bits=24, encaps=0
;
restore, 'chan51.sav'
plot, radius, flux, title='Centre (R=1'') Removed', xtitle='Radius (arcsec)', ytitle='Flux (Jy)', chars=1.5, $
thick=6, xthick=4, ythick=4, xr=[0,15], yr=[0,10],color=1
xyouts, 5, 1.2, 'chan51', color=1, charthick=6
;
restore, 'chan50.sav'
oplot, radius, flux,thick=6, color=2, psym=1
xyouts, 6, 0.50, 'chan50', color=2, charthick=6
;
restore, 'chan49.sav'
oplot, radius, flux,thick=6, color=3, psym=1
xyouts, 6, 0.70, 'chan49', color=3, charthick=6
;
restore, 'chan48.sav'
oplot, radius, flux,thick=6, color=5
xyouts, 5, 1.95, 'chan48', color=5, charthick=6
;
restore, 'chan47.sav'
oplot, radius, flux,thick=6, color=1
xyouts, 8, 5.5, 'chan47', color=1, charthick=6
; ;
restore, 'chan46.sav'
oplot, radius, flux,thick=6, color=2
xyouts, 10, 8, 'chan46', color=2, charthick=6
; ; ;
restore, 'chan45.sav'
plot, radius, flux, title='Centre (R=1'') Removed', xtitle='Radius (arcsec)', ytitle='Flux (Jy)', chars=1.5, $
thick=6, xthick=4, ythick=4, xr=[0,15], yr=[0,12],color=1
xyouts, 5, 1.2, 'chan45', color=1, charthick=6
;
restore, 'chan44.sav'
oplot, radius, flux,thick=6, color=2
xyouts, 10, 5, 'chan44',color=2, charthick=6
; ;
restore, 'chan43.sav'
oplot, radius, flux,thick=6, color=3
xyouts, 7, 4.0, 'chan43',color=3, charthick=6
; ; ;
restore, 'chan42.sav'
oplot, radius, flux,thick=6, color=4
xyouts, 7, 4.0, 'chan42',color=4, charthick=6
;
; restore, 'chan12.sav'
; oplot, radius, flux,thick=6, color=1
; xyouts, 7, 4.0, 'chan12',color=1, charthick=6
;
; HELP, calls=s
; STAMP, s
; DEVICE, /CLOSE
; set_plot, 'x'
End
