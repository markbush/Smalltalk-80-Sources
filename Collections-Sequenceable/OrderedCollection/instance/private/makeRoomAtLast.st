makeRoomAtLast
	| index newLast |
	newLast _ self size.
	self basicSize - self size = 0 ifTrue: [self grow].
	firstIndex = 1 ifTrue: [^self].
	"we might be here under false premises or grow did the job for us"
	index _ 1.
	[index <= newLast]
		whileTrue:
			[self basicAt: index put: (self basicAt: index + firstIndex - 1).
			self basicAt: index + firstIndex - 1 put: nil.
			index _ index + 1].
	firstIndex _ 1.
	lastIndex _ newLast
