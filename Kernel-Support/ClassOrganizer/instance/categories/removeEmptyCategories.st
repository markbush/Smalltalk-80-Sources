removeEmptyCategories
	"Remove empty categories."
	| categoryIndex currentStop keptCategories keptStops |
	keptCategories _ WriteStream on: (Array new: 16).
	keptStops _ WriteStream on: (Array new: 16).
	currentStop _ categoryIndex _ 0.
	[(categoryIndex _ categoryIndex + 1) <= categoryArray size]
		whileTrue:
			[(categoryStops at: categoryIndex) > currentStop
				ifTrue:
					[keptCategories nextPut: (categoryArray at: categoryIndex).
					keptStops nextPut: (currentStop _ categoryStops at: categoryIndex)]].
	categoryArray _ keptCategories contents.
	categoryStops _ keptStops contents.
	categoryArray size = 0
		ifTrue:
			[categoryArray _ Array with: Default.
			categoryStops _ Array with: 0]

	"ClassOrganizer allInstancesDo: [:co | co removeEmptyCategories]."
