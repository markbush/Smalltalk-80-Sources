depthBelow: aContext
	"Answer how many calls between this and aContext."
	| this depth |
	this _ self.
	depth _ 0.
	[this == aContext or: [this == nil]]
		whileFalse:
			[this _ this sender.
			depth _ depth + 1].
	^depth
