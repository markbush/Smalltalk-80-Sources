addProtocol
	| aString newProtocol |
	self changeRequest ifFalse: [^self].
	aString _ self prompt: 'Enter new protocol name' initially: 'protocol name'.
	aString isEmpty ifTrue: [^ self].
	newProtocol _ aString asSymbol.
	self selectedClass organization addCategory: newProtocol before: protocol.
	self logProtocolChange: self selectedClass name, ' organization addCategory: ', newProtocol storeString, ' before: ', protocol storeString.
	self selectedClass reorganize.
	self newProtocolList: newProtocol
