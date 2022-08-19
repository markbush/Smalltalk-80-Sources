unResponsives
	"Smalltalk unResponsives"

	| aStream aCollection satisfiedSet workingSet aSubclass special |
	aStream _ WriteStream on: (Array new: 50).
	special _ self hasSpecialSelector: #subclassResponsibility ifTrueSetByte: [:byte ].
	Smalltalk allBehaviorsDo:
		[:class |
		aCollection _ class whichSelectorsReferTo: #subclassResponsibility special: special byte: byte.
		aCollection size > 0
			ifTrue:
				[aCollection do:
					[:selector |
					workingSet _ class subclasses asOrderedCollection.
					satisfiedSet _ Set new.
					[workingSet isEmpty] whileFalse:
						[aSubclass _ workingSet removeFirst.
						(aSubclass includesSelector: selector)
							ifFalse:
								[satisfiedSet add: aSubclass.
								workingSet addAll: aSubclass subclasses]].
					 satisfiedSet do:
						[:subclass |
						aStream nextPut: class name, ' ', selector, '
	', subclass name]]]].
	^aStream contents
