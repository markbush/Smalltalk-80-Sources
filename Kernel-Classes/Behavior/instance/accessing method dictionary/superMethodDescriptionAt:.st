superMethodDescriptionAt: selector
	"return a method description for the method for 'selector' inherited from my superclasses"
	| descr result |
	result _ MethodDescription makeMethodNotImplemented.
	self superclasses do:
		[: each | descr _ each methodDescriptionAt: selector.
		 descr isMethodNotImplemented ifFalse:
		 	[result isMethodNotImplemented
				ifTrue: [result _ descr]
				ifFalse: [result=descr ifFalse:
							[^MethodDescription makeConflictingMethods]]]].
	^result
