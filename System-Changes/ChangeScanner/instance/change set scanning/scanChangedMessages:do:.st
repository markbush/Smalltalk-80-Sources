scanChangedMessages: changedMessages do: aBlock
	| selector change className remoteSource class category |
	changedMessages do:
		[:aString |
		super scan: (ReadStream on: aString).
		(className _ self nextClass) notNil ifTrue:
			[(selector _ self nextSelector) notNil ifTrue:
				[change _ MethodDefinitionChange new className: className; selector: selector.
				(className includes: Character space)
					ifTrue: [class _ (Smalltalk at: (className copyUpTo: Character space) asSymbol) class]
					ifFalse: [class _ Smalltalk at: className asSymbol].
				category _ class whichCategoryIncludesSelector: selector.
				category == nil ifTrue: [category _ 'As yet unclassified'].
				change category: category.
				change getSource.
				aBlock value: change]]]
