removeSelector: selector class: class
	"Include indication that a method has been forgotten."

	(self atSelector: selector class: class) = #add
		ifTrue: [self removeSelectorChanges: selector
					class: class]					"Forgot a new method, no-op"
		ifFalse: [self atSelector: selector
					class: class
					put: #remove]
