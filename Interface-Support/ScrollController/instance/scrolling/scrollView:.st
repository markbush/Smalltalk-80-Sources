scrollView: anInteger
	"If anInteger is not zero, tell the reciever's view to scroll by anInteger amount."

	anInteger ~= 0
		ifTrue:
			[view scrollBy: 0 @
				((anInteger min: view window top - view boundingBox top)
						max: view window top - view boundingBox bottom).
			view clearInside.
			view display]
