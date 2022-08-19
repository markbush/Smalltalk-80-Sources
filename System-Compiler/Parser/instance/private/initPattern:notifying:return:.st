initPattern: aString notifying: req return: aBlock
	| result |
	self
		init: (ReadStream on: aString asString)
		notifying: req
		failBlock: [^nil].
	encoder _ self.
	result _ aBlock value: (self pattern: false inContext: nil).
	encoder _ failBlock _ nil.  "break cycles"
	^result
