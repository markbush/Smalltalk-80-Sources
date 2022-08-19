accept: aText from: aController
	acceptMsg == nil ifTrue: [self flash. ^ false].
	^ acceptMsg numArgs = 1
		ifTrue:  "one arg selectors get text only"
			[model perform: acceptMsg with: aText]
		ifFalse:  "two arg selectors get text and controller as well"
			[model perform: acceptMsg with: aText with: aController]
