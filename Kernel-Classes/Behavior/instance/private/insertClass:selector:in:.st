insertClass: aClass selector: selector in: aDictionary
	| previous |
	previous _ aDictionary at: selector ifAbsent: [Array new].
	(previous includes: aClass) ifFalse:
		[aDictionary at: selector put: (previous copyWith: aClass)]
