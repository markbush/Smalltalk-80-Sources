initDict
	writeDict _ Dictionary new: 256.
	Smalltalk
		allBehaviorsDo:
			[:class |
			writeDict at: class put: #writePointers:.
			class isBits
				ifTrue:
					[writeDict at: class put: (class isBytes
											ifTrue: [#writeBytes:]
											ifFalse: [#writeWords:])]
				ifFalse:
					[(class inheritsFrom: Set) | (class == Set) ifTrue:
						[writeDict at: class put: #writeSet:].
					(class inheritsFrom: IdentityDictionary) | (class == IdentityDictionary) ifTrue:
						[writeDict at: class put: #writeIdentityDictionary:]]].
	writeDict at: SmallInteger put: #writeClamped:.
	writeDict at: CompiledMethod put: #writeMethod:.
	writeDict at: Process put: #writeProcess:
