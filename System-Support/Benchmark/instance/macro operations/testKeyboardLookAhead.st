testKeyboardLookAhead
	| aStringHolderView insert inputter editor |
	aStringHolderView _ self favoriteStringHolderView.
	editor _ aStringHolderView controller.
	editor selectAt: 5.
	inputter _ editor sensor class classPool at: #CurrentInputState.
	Sensor flushKeyboard.
	self test:
			['Now! ' do:
				[:char |
				 inputter keyAt: char asciiValue put: 1].
				 editor readKeyboard]
		labeled: 'text keyboard response using lookahead buffer' repeated: 3.
	aStringHolderView release

	"Benchmark new testKeyboardLookAhead"
