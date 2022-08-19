removeProtocol
	| selectors |
	self changeRequest ifFalse: [^self].
	selectors _ self selectedClass organization listAtCategoryNamed: protocol.
	selectors isEmpty ifFalse:
		[(self confirm: 'Are you certain that you want to
remove all methods in this protocol?') ifFalse: [^self].
		selectors do: [:sel | self selectedClass removeSelector: sel]].
	self selectedClass organization removeCategory: protocol.
	self logProtocolChange: self selectedClass name, ' organization removeCategory: ', protocol storeString.
	self selectedClass reorganize.
	self newProtocolList: nil
