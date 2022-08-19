removeElement: element
	"Remove the selector, element, from all categories."

	| categoryIndex elementIndex nextStop newElements |
	categoryIndex _ 1.
	elementIndex _ 0.
	nextStop _ 0.
	"nextStop keeps track of the stops in the new element array"
	newElements _ WriteStream on: (Array new: elementArray size).
	[(elementIndex _ elementIndex + 1) <= elementArray size]
		whileTrue:
			[[elementIndex > (categoryStops at: categoryIndex)]
				whileTrue:
					[categoryStops at: categoryIndex put: nextStop.
					categoryIndex _ categoryIndex + 1].
			element = (elementArray at: elementIndex)
				ifFalse:
					[nextStop _ nextStop + 1.
					newElements nextPut: (elementArray at: elementIndex)]].
	[categoryIndex <= categoryStops size]
		whileTrue:
			[categoryStops at: categoryIndex put: nextStop.
			categoryIndex _ categoryIndex + 1].
	elementArray _ newElements contents
