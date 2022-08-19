return: value to: sendr
	"Simulate the return of value to sendr."

	self releaseTo: sendr.
	^sendr push: value
