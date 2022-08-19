grid: aPoint
	"Answer a new Point to the nearest rounded grid modules specified
	by aPoint."

	| newX newY |

	aPoint x = 0
		ifTrue:	[newX _ 0]
		ifFalse:	[newX _ x roundTo: aPoint x].
	aPoint y = 0
		ifTrue:	[newY _ 0]
		ifFalse:	[newY _ y roundTo: aPoint y].
	^newX @ newY
