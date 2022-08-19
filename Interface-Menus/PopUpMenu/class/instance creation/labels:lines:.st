labels: aString lines: anArray
	"Answer an instance of me whose items are in aString, with lines drawn
	after each item indexed by anArray."
	^ self new labels: aString font: (TextStyle default fontAt: 1) lines: anArray
