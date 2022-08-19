allocateSN: file
	| sn i |
	"get last serial number used, a ByteArray"
	bitsFile position: 8.
	sn _ bitsFile next: 4.

	"Add 1 to 4-byte SN, handling overflow"
	i _ 4.
	[(sn at: i) = 255] whileTrue:
		[sn at: i put: 0.  i _ i-1].
	sn at: i put: ((sn at: i) + 1).

	"store new serial number, and return it"
	bitsFile skip: -4.
	bitsFile nextPutAll: sn.
	^sn
