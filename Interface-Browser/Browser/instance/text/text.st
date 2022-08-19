text
	| text |
	textMode == #classDefinition ifTrue:
		[className == nil
			ifTrue: [^ (Class template: category) asText]
			ifFalse: [^ self selectedClass definition asText]].
	textMode == #methodDefinition ifTrue:
		[selector == nil
			ifTrue: [^ self selectedClass sourceCodeTemplate asText]
			ifFalse: [^ (self selectedClass sourceCodeAt: selector) asText
						makeSelectorBoldIn: self selectedClass]].
	textMode == #category ifTrue:
		[^ 'category to add' asText].
	textMode == #categories ifTrue:
		[^ organization printString asText].
	textMode == #protocol ifTrue:
		[^ 'protocol to add' asText].
	textMode == #protocols ifTrue:
		[^ self selectedClass organization printString asText].
	textMode == #comment ifTrue:
		[text _ self selectedClass comment asText.
		text isEmpty ifFalse: [^ text].
		^ 'This class has no comment' asText].
	textMode == #hierarchy ifTrue:
		[^ self selectedClass printHierarchy asText].
	^ Text new
