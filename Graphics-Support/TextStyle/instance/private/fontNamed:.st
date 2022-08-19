fontNamed: aString
	(1 to: fontArray size)
		do:	[:faceFontIndex |
			aString = (fontArray at: faceFontIndex) name
			ifTrue:	[^faceFontIndex]].
	^ self basalFontFor: 1
