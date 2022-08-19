protocol: selection
	protocol _ selection.
	self classMode ifTrue: [^ self newSelectorList: nil].
	selection isNil & className notNil ifTrue: [self textMode: #classDefinition].
	self newSelectorList: selector
