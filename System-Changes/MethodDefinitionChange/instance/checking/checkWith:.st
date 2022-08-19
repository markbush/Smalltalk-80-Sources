checkWith: aChecker
	| systemVersion oldChanges |
	aChecker changesAt: self name add: self.
	aChecker checkSystem ifTrue:
		[self isInSystem ifFalse:
			[systemVersion _ self class new className: className; category: category; selector: selector.
			systemVersion sourceFileAndPosition:
				[:aFile :aPosition |
				systemVersion file: aFile position: aPosition.
				(aChecker equalWithoutComments: self text and: systemVersion text) ifFalse:
					[oldChanges _ aChecker changesAt: self name.
					oldChanges size > 1 ifTrue:
						[oldChanges do: [:c | c isInSystem ifTrue: [^self]]].
					aChecker changesAt: self name add: systemVersion]]]]
