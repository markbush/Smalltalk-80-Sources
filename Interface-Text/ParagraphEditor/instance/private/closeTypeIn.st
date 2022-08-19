closeTypeIn
	beginTypeInBlock ~~ nil
		ifTrue:
			[beginTypeInBlock < startBlock
				ifTrue:
					[CurrentSelection _
						paragraph text
							copyFrom: beginTypeInBlock stringIndex
							to: startBlock stringIndex - 1.
					startBlock _ beginTypeInBlock copy].
			beginTypeInBlock _ nil.
			^true]
		ifFalse: [^false]
