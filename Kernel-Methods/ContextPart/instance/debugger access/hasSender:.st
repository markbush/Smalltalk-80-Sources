hasSender: context
	"Answer true if the receiver is strictly above context on the stack."

	| s |
	self == context ifTrue: [^false].
	s _ sender.
	[s == nil]
		whileFalse:
			[s == context ifTrue: [^true].
			s _ s sender].
	^false
