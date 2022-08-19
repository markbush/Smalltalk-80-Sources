showWhile: aBlock
	"While evaluating the argument, aBlock, make the receiver be the cursor shape."

	| oldcursor value |
	oldcursor _ Sensor currentCursor.
	self show.
	value _ aBlock value.
	oldcursor show.
	^value
