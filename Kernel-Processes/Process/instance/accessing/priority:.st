priority: anInteger
	"Set the receiver's priority to anInteger."

	anInteger<=Processor highestPriority
		ifTrue: [priority _ anInteger]
		ifFalse: [self error: 'priority too high']
