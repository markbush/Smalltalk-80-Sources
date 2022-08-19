removeClass: aClass selector: selector in: aDictionary
	| list |
	list _ (aDictionary at: selector) copyWithout: aClass.
	list size = 0
		ifTrue: [aDictionary removeKey: selector]
		ifFalse: [aDictionary at: selector put: list]
