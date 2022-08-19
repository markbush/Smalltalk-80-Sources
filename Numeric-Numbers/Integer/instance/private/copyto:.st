copyto: x
	1 to: (self digitLength min: x digitLength)
		do: [:i | x digitAt: i put: (self digitAt: i)].
	^x
