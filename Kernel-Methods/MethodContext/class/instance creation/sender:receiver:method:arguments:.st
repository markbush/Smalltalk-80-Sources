sender: s receiver: r method: m arguments: args
	^(self new: m frameSize) setSender: s receiver: r method: m arguments: args
