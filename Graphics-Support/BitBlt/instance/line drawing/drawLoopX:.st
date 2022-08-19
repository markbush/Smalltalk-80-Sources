drawLoopX: xDelta Y: yDelta
	"This is the Bresenham plotting algorithm (IBM Systems Journal Vol
	4 No. 1, 1965). It chooses a principal direction, and maintains
	a potential, P.  When P's sign changes, it is time to move in the
	minor direction as well.  Optional.  See Object documentation whatIsAPrimitive."

	| dx dy px py P i |
	<primitive: 104>
	dx _ xDelta sign.
	dy _ yDelta sign.
	px _ yDelta abs.
	py _ xDelta abs.
	self copyBits.
	py > px
		ifTrue:
			["more horizontal"
			P _ py // 2.
			i _ 0.
			[(i _ i + 1) <= py]
				whileTrue:
					[destX _ destX + dx.
					(P _ P - px) < 0
						ifTrue:
							[destY _ destY + dy.
							P _ P + py].
					self copyBits]]
		ifFalse:
			["more vertical"
			P _ px // 2.
			i _ 0.
			[(i _ i + 1) <= px]
				whileTrue:
					[destY _ destY + dy.
					(P _ P - py) < 0
						ifTrue:
							[destX _ destX + dx.
							P _ P + px].
					self copyBits]]
