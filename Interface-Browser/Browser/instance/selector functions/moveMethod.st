moveMethod
	| newProtocol classPart destClass protStart moved destClassName |
	self changeRequest ifFalse: [^self].
	newProtocol _ self prompt: 'Type destination protocol
(Class>protocol will copy)' initially: MethodMoveProtocol.
	newProtocol isEmpty ifTrue: [^self].
	MethodMoveProtocol _ newProtocol.
	moved _ false.
	(newProtocol includes: $>)
		ifTrue:
			["copy to another class"
			classPart _ newProtocol copyUpTo: $>.
			destClassName _ classPart copyUpTo: Character space.
			destClass _ Smalltalk at: destClassName asSymbol ifAbsent: [nil].
			(destClass isKindOf: ClassDescription)
				ifFalse: [(Display flash: Display boundingBox). ^nil].
			classPart size = destClassName size
				ifFalse:
					[(classPart size-destClassName size = 6
						and: [(classPart copyFrom: classPart size - 5 to: classPart size) = ' class'])
								ifTrue: [destClass _ destClass class]
								ifFalse: [(Display flash: Display boundingBox). ^nil]].
			protStart _ classPart size + 2.
			[(newProtocol at: protStart) = $ ]
				whileTrue: [protStart _ protStart + 1].
			newProtocol _ (newProtocol copyFrom: protStart to: newProtocol size) asSymbol.
			destClass == self selectedClass
				ifFalse:
					[moved _ true.
					destClass compile: self text classified: newProtocol notifying: nil]]
		ifFalse:
			["move within this class"
			destClass _ self selectedClass.
			newProtocol _ newProtocol asSymbol].
	moved
		ifFalse:
			[(destClass organization categories includes: newProtocol)
				ifFalse:
					[destClass organization addCategory: newProtocol.
					self newProtocolList: protocol].
			destClass organization classify: selector under: newProtocol.
			self logProtocolChange: destClass name , ' organization classify: '
								, selector storeString , ' under: ' , newProtocol storeString.
			destClass reorganize].
	self newSelectorList: selector
