PRO plot_carma_sofia
;
set_plot, 'ps'
device, filename='carma_sofia.eps',/color, /encaps
!p.font=0
make_ct, ncolors=3
;
  restore, 'sofia_spec.sav'
flx64_sof=TEMP64*750.d+0
vel64_sof=VHELIO_64-20.7
;
restore, 'c_4_combine_spectra.sav'
;FLX32 FLX64 VEL32 VEL64    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; LOW RES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
plot, vel64_sof, flx64_sof/100, psym=10, xr=[-30,+30],color=0, background=1, yr=[-1.0, 2.2], xstyle=1,ystyle=1,$
xthick=5,ythick=5, thick=5, charthick=1.5,charsize=1.5, xtitle='!9D!5v (km s!u-1!n) Stellar Rest Frame', ytitle='Scaled Flux (Jy)'
oplot, vel64-20.7, flx64, psym=10, color=2, thick=6
;
xyouts, -10,-0.6, 'SOFIA-GREAT CO(J=12-11)', color=0,charthick=1.5, charsize=1.3
xyouts, -10,-0.8, 'CARMA C config CO(J=2-1)', color=2,charthick=1.5, charsize=1.3
;
plots, -2.5, 2, psym=2, symsize=1.6, thick=4
; ;
; ;
DEVICE, /CLOSE
set_plot, 'x'
stop
END 