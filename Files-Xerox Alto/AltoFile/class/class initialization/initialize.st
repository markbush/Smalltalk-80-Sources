initialize
	| readStream |
	AltoFilePool at: #(CRR CCR CCW CWW ) put: #(18496 18512 18520 18536 ).
	readStream _ ReadStream on: #(1024 32 'SysDir.' ).
	#(Dfmask Boffset Dirname ) do:
		 [:each | AltoFilePool at: each put: readStream next].
	readStream _ ReadStream on: #(1 2 3 4 5 6 7 8 ).
	#(Nextp Backp Unused Numch Pagen Vn Sn1 Sn2 ) do:
		[:each | AltoFilePool at: each put: readStream next]
