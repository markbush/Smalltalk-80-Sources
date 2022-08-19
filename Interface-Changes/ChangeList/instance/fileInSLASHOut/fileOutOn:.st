fileOutOn: aFile
	| previous current |
	list do:
		[:next |
		(removed includes: next) ifFalse:
			[current == nil
				ifFalse: [current fileOutOn: aFile previous: previous next: next].
			previous _ current.
			current _ next]].
	current == nil ifFalse:
		[current fileOutOn: aFile previous: previous next: nil]
