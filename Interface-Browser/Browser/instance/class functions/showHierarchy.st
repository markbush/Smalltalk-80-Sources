showHierarchy
	self changeRequest ifFalse: [^self].
	self textMode: #hierarchy.
	self newProtocolList: nil
