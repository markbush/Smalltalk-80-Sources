releaseTo: caller
	"Remove information from the receiver and the contexts on its
	sender chain up to caller in order to break circularities."

	| c s |
	c _ self.
	[c == nil or: [c == caller]]
		whileFalse:
			[s _ c sender.
			c singleRelease.
			c _ s]
