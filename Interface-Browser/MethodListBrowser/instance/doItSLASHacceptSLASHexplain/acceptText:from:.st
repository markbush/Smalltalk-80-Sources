acceptText: aText from: aController
	textMode == #unclassified ifTrue:
		[self notify: 'A method must be selected to suggest class and protocol'.
		^ false].
	^ super acceptText: aText from: aController
