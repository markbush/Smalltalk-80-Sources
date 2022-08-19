signal: aSemaphore atTime: timeInterval
	"Signal aSemaphore when the system's millisecond clock reaches
	timeInterval (an Integer)"

	| milliseconds |
	(timeInterval digitLength > 4 or: [timeInterval negative])
		ifTrue: [self error: 'Can''t convert time to double word'].
	milliseconds _ ByteArray new: 4.
	milliseconds at: 1 put: (timeInterval digitAt: 1).
	milliseconds at: 2 put: (timeInterval digitAt: 2).
	milliseconds at: 3 put: (timeInterval digitAt: 3).
	milliseconds at: 4 put: (timeInterval digitAt: 4).
	^self signal: aSemaphore atMilliseconds: milliseconds
