methodName: selection
	| aStream aSymbol |
	methodName _ selection.
	selection == nil ifTrue: [selector _ nil. ^ self textMode: #unclassified].
	aStream _ ReadStream on: selection.
	className _ (aStream upTo: $ ) asSymbol.
	aSymbol _ (aStream upTo: $ ) asSymbol.
	(meta _ (aSymbol == #class) & aStream atEnd not) ifTrue:
		[aSymbol _ (aStream upTo: $ ) asSymbol].
	protocol _ self selectedClass organization categoryOfElement: aSymbol.
	self selector: aSymbol
