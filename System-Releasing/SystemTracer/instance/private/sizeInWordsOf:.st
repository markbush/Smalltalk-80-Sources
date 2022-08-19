sizeInWordsOf: anObject
	| class |
	class_ anObject class.
	class isBytes ifTrue: [^anObject size+1//2].
	class isVariable ifTrue: [^class instSize+anObject basicSize].
	^class instSize
