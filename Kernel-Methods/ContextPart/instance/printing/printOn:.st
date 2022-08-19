printOn: aStream
	| mclass selector class |
	selector _
		(class _ self receiver class)
			selectorAtMethod: self method
			setClass: [:mclass].
	selector == #?
		ifTrue:
			[aStream nextPut: $?; print: self method who.
			^self].
	aStream nextPutAll: class name.
	mclass == class
		ifFalse:
			[aStream nextPut: $(.
			aStream nextPutAll: mclass name.
			aStream nextPut: $)].
	aStream nextPutAll: '>>'.
	aStream nextPutAll: selector
