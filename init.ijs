NB. init

script_z_ '~system\main\gl2.ijs'
script_z_ '~system\main\pack.ijs'

coclass 'ptreemap'
NB. init

coinsert 'jgl2'

NB. =========================================================
create=: 3 : 0
if. #y do.
  locP=: boxopen y
else.
  locP=: COCREATOR
end.
EMPTY
)

NB. =========================================================
destroy=: 3 : 0
try.
  glsel Hwndc
  capture 0
catch. end.
codestroy''
)

NB. =========================================================
NB. show map
show=: 3 : 0
if. 0=#locP do. NB. needed for setnames
  locP=: COCREATOR
end.
setnames y
initevents''
drawinit''
initmisc''
setrxywh getxywhx''
refresh''
)

NB. =========================================================
NB. paint event handler
paint=: 3 : 0
xywh=. getxywhx ''
if. Rxywh -: xywh do. return. end.
setrxywh xywh
showitn''
)

NB. =========================================================
setrxywh=: 3 : 0
'Rx Ry Rw Rh'=: Rxywh=: y
)

NB. =========================================================
initxywh=: 3 : 0
'Sx Sy Sw Sh'=: Sxywh=: Rxywh + Roff * 1 1 _1 _1
)
