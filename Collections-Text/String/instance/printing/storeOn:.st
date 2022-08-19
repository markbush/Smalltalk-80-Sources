storeOn: aStream
	"Print inside string quotes, doubling inbedded quotes."

	| i length x |
	aStream nextPut: $'.
	i _ 0.
	length _ self size.
	[(i _ i + 1) <= length]
		whileTrue:
			[aStream nextPut: (x _ self at: i).
			x == $' ifTrue: [aStream nextPut: x]].
	"embedded quotes get doubled"
	aStream nextPut: $'
