truncatedGrid: aPoint
	"Answer a new Point to the nearest truncated grid modules specified
	by aPoint."

	^(x truncateTo: aPoint x) @ (y truncateTo: aPoint y)
