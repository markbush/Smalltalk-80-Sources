allImplementorsOf: aSelector
	"Answer a SortedCollection of all the methods that implement the message aSelector."

	| aCollection |
	aCollection _ SortedCollection new.
	Cursor execute showWhile:
		[self allBehaviorsDo:
			[:class |
			(class includesSelector: aSelector)
				ifTrue: [aCollection add: class name, ' ', aSelector]]].
	^aCollection
