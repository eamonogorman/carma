PRO find_max
;
;######################## Blueshifted side ######################
restore, 'chan51.sav'
x=max(flux[where(radius gt 3.0 and radius lt 6.0)])
print, 'max flux of chan 51 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan50.sav'
x=max(flux[where(radius gt 5.0 and radius lt 8.0)])
print, 'max flux of chan 50 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan49.sav'
x=max(flux[where(radius gt 5.0 and radius lt 8.0)])
print, 'max flux of chan 49 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan48.sav'
x=max(flux[where(radius gt 7.0 and radius lt 10.0)])
print, 'max flux of chan 48 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan47.sav'
x=max(flux[where(radius gt 7.0 and radius lt 11.0)])
print, 'max flux of chan 47 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan46.sav'
x=max(flux[where(radius gt 8.0 and radius lt 12.0)])
print, 'max flux of chan 46 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan45.sav'
x=max(flux[where(radius gt 10.0 and radius lt 15.0)])
print, 'max flux of chan 45 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan44.sav'
x=max(flux[where(radius gt 10.0 and radius lt 15.0)])
print, 'max flux of chan 44 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan43.sav'
x=max(flux[where(radius gt 10.0 and radius lt 15.0)])
print, 'max flux of chan 43 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan42.sav'
x=max(flux[where(radius gt 10.0 and radius lt 15.0)])
print, 'max flux of chan 42 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
stop
;######################## Redshifted side ######################
restore, 'chan4.sav'
x=max(flux[where(radius gt 3.0 and radius lt 5.0)])
print, 'max flux of chan 4 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan5.sav'
x=max(flux[where(radius gt 5.0 and radius lt 8.0)])
print, 'max flux of chan 5 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan6.sav'
x=max(flux[where(radius gt 5.0 and radius lt 10.0)])
print, 'max flux of chan 6 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan7.sav'
x=max(flux[where(radius gt 5.0 and radius lt 10.0)])
print, 'max flux of chan 7 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan8.sav'
x=max(flux[where(radius gt 8.0 and radius lt 12.0)])
print, 'max flux of chan 8 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan9.sav'
x=max(flux[where(radius gt 10.0 and radius lt 13.0)])
print, 'max flux of chan 9 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan10.sav'
x=max(flux[where(radius gt 10.0 and radius lt 15.0)])
print, 'max flux of chan 10 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan11.sav'
x=max(flux[where(radius gt 10.0 and radius lt 15.0)])
print, 'max flux of chan 11 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
;
restore, 'chan12.sav'
x=max(flux[where(radius gt 10.0 and radius lt 15.0)])
print, 'max flux of chan 12 is ', x
y=where(flux eq x)
print, 'at a radius of ', radius[y]
END
