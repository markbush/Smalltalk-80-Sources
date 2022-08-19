meta: aBoolean
	self changeRequest ifFalse: [^ self changed: #meta].
	meta _ aBoolean.
	self changed: #meta.
	self newProtocolList: protocol.
	self classMode ifTrue: [self changed: #text]
