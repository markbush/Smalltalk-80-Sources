frameSize
	"Answer the size of temporary frame needed to run the receiver."
	self needsLargeFrame
		ifTrue: [^ LargeFrame]
		ifFalse: [^ SmallFrame]
