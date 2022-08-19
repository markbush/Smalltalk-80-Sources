valueAt: aPoint
	"0 and 1 are white and black;  2 is transparent.
	3 is a weird value which look like 1"
	(shape valueAt: aPoint) = 1
		ifTrue: [^ figure valueAt: aPoint]  "opaque"
		ifFalse: [^ 2 + (figure valueAt: aPoint)]  "background shows through"
