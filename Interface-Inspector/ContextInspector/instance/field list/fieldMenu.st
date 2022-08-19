fieldMenu
	field == nil ifTrue: [^ nil].
	^ActionMenu
		labels: 'inspect'
		selectors: #(inspectField)
