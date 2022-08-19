growSize
	"Answer an amount by which the receiver should grow to make room for more elements (in response to the message 'grow')."

	self basicSize >= self maxSize ifTrue: [self error: 'unable to grow this collection'].
	^(self basicSize max: 2) min: self maxSize - self basicSize
