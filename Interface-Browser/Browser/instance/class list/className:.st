className: selection
	className _ selection.
	self newProtocolList: protocol.
	selection isNil & category notNil
		ifTrue: [self textMode: #classDefinition]
		ifFalse: [self classMode ifTrue: [self changed: #text]]
