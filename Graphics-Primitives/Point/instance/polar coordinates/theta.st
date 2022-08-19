theta
	"Answer the angle the receiver makes with origin in radians.
	right is 0; down is 90."

	| tan theta |
	x = 0
		ifTrue: [y >= 0
				ifTrue: [^1.5708"90.0 degreesToRadians"]
				ifFalse: [^4.71239"270.0 degreesToRadians"]]
		ifFalse:
			[tan _ y asFloat / x asFloat.
			theta _ tan arcTan.
			x >= 0
				ifTrue: [y >= 0
						ifTrue: [^theta]
						ifFalse: [^360.0 degreesToRadians + theta]]
				ifFalse: [^180.0 degreesToRadians + theta]]
