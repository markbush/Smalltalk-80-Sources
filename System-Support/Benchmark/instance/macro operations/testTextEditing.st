testTextEditing
	| aStringHolderView editor selectPoint |
	aStringHolderView _ self favoriteStringHolderView.
	editor _ aStringHolderView controller.
	selectPoint _ 0.
	self test:
			[editor selectAt: (selectPoint _ selectPoint + 5).
			 editor replaceSelectionWith: 'Now! ' asText]
		labeled: 'text replacement and redisplay' repeated: 20.
	aStringHolderView release

	"Benchmark new testTextEditing"
