encodeSelector: selector
	^self
		name: selector
		key: selector
		class: SelectorNode
		type: SendType
		set: selectorSet
