update: aParameter
	highlightForm == nil
		ifTrue: [self interrogateModel
					ifTrue: [self displayComplemented]
					ifFalse: [self displayNormal]]
		ifFalse: [self display]
