selector: selection
	selector _ selection.
	(selection == nil and: [protocol == nil]) ifTrue: [^ self].
	self textMode: #methodDefinition
