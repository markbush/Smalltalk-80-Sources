editClass
	self changeRequest ifFalse: [^self].
	self textMode: #classDefinition.
	self newProtocolList: nil
