fileIn
	| class |
	class _ self classObject.
	class isNil
		ifTrue: [self error: 'Class ', className, ' does not exist in this system']
		ifFalse:
			[class compile: self text classified: category.
			Transcript show: className , '<' , category , '
']
