renameProtocol
	| aString newProtocol |
	self changeRequest ifFalse: [^self].
	aString _ self prompt: 'Enter new protocol name' initially: protocol.
	aString isEmpty ifTrue: [^ self].
	newProtocol _ aString asSymbol.
	(self selectedClass organization renameCategory: protocol to: newProtocol)
		ifTrue:
			[self logProtocolChange: self selectedClass name, ' organization renameCategory: ', protocol storeString, ' to: ', newProtocol storeString.
self selectedClass reorganize.
			self newProtocolList: newProtocol]
