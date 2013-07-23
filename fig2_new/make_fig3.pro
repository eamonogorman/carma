PRO make_fig3
;
;i='34'
!p.font=0
;set_plot, 'ps'
;device, file='test.ps',/color, bits=24, /encapsulate, xsize=1.5, ysize=1.5, /inches
;
b = mrdfits('/home/eamon/carma/cdecombine/apj_final/cde.64.final_pb.image.fits',0, header)
; 
i=34
loadct,1
;
rms=[0.033105801791, 0.030112106353, 0.0310347005725, 0.035956017673, 0.0335943885148, 0.0257348548621, 0.021132061258, 0.0210670735687]
;
image = BYTSCL(b, MAX=0.2)
image=image[*,*,38]
new = REBIN(image, 450, 450)
CONTOUR, new, LEVELS =  FINDGEN(6)*0.02, MAX_VALUE = 0.2, XSTYLE = 1, YSTYLE = 1, /NODATA
PX = !X.WINDOW * !D.X_VSIZE  
PY = !Y.WINDOW * !D.Y_VSIZE
SX = PX[1] - PX[0] + 1   
SY = PY[1] - PY[0] + 1

TVSCL, CONGRID(image, SX, SY), PX[0], PY[0]
CONTOUR, new, LEVELS = [0.02,0.04], MAX_VALUE = 0.2, XSTYLE = 1, YSTYLE = 1, /noerase
;
;DEVICE, /CLOSE
;set_plot, 'x'
;
stop
End