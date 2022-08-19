computeCurve
	"Compute an array for the derivatives at each knot."

	| size extras values |
	size _ self size.
	self isCyclic
		ifTrue:	"for cyclic curves"
			[extras _ 2.		"add 2 extra points to each end."
			values _ Array new: 2*extras + size.
			1 to: extras do:
				[:i |
				values at: i put: (self at: size-extras+i-1).
				values at: size+extras+i put: (self at: i+1)].
			values replaceFrom: extras+1 to: extras+size with: collectionOfPoints]
		ifFalse: [extras _ 0.
				values _ collectionOfPoints].

	derivatives _ Array new: 3.
	1 to: 3 do: [:i | derivatives at: i put: (Array new: values size)].
	self derivs: values
		first: (derivatives at: 1)
		second: (derivatives at: 2)
		third: (derivatives at: 3).

	extras > 0 ifTrue:		"remove extra points"
		[1 to: 3 do:
			[:i | derivatives at: i put: ((derivatives at: i) copyFrom: extras+1 to: extras+size)]]
