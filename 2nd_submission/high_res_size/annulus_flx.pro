PRO annulus_flx
;
; Here we create circular apertures of radii similar to the previous box extractions. We then extract the flux/Jy values and convert them to Jy.
;
make_ct, ncolors=4
n=150.0		;no pixels to sample out to
flux=dblarr(n-11)
radius=dblarr(n-11)
;
a = mrdfits('/home/eamon/backup_27_01_2012/carma/spectra/cde/apj_final/cde.32.final_pb.image.fits',0, header)
;
;1) Dirty Beam Size (after cleaning) in arcsecs
bmax=1.02041
bmin=0.83978
;
;2) How many pixels fit inside beam (1 pixel =0.1 arcsecs)
fwhmx=bmax*10.0
fwhmy=bmin*10.0
barea=1.133*fwhmx*fwhmy	;in pixels
;
;3) Define region in image & number of pixels in region
x0=226	;pixels 
y0=224	;pixels
;
For i=1,56 do begin
;
j_min=11.0 & j_max=n	;pixels
For j=j_min,j_max-1 do begin
r_in=(1.0)*10.0			;10 pixels or 1''
r_out=j
r=(r_out-r_in)*0.1	;anulus size in arcsec
radius[j-11]=r+1.0	;Here we add 1 as we want actual distance out
imag=a[*,*,i]
;Getannul, image, xcen, ycen, inradius, outradius, data
getannul, imag, x0, y0, r_in, r_out, data
flxbeam=total(data)
print, i
;4) Find number of beams in region of extraction
npix=n_elements(data)
n_beams=npix/barea
;
;5) Get result in Jy. i.e. Take the mean data in Jy/beam in extraction region and multiply by number of beams
flx=(flxbeam/npix[0])*n_beams[0]
flux[j-11]=flx
Endfor	;j
save, filename='chan'+string(i, format='(g0.3)')+'.sav', radius, flux
Endfor	;i
;
End
