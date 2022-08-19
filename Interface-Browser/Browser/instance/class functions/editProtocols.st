editProtocols
	self changeRequest ifFalse: [^self].
	self textMode: #protocols.
	self newProtocolList: nil
