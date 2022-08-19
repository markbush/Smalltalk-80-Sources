derivativePointsAt: knot

	^Array	with: ((derivatives at: 1) at: knot)
			with: ((derivatives at: 2) at: knot)
			with: ((derivatives at: 3) at: knot)
