removeMethod
	(self changeRequest and: [self confirm: 'Are you certain that you
want to remove this method?'])
		ifTrue:
			[self selectedClass removeSelector: selector.
			self newSelectorList: nil.
			^ true].
	^ false
