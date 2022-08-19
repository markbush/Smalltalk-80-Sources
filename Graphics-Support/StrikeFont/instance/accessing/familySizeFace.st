familySizeFace
	"Return an array with familyName <String> pointSize <Integer> faceCode <Integer>"

	| fontName firstDigit lastDigit |
	fontName_ name asUppercase.
	firstDigit _ fontName findFirst: [:char | char isDigit].
	lastDigit _ fontName findLast: [:char | char isDigit].
	^Array with: (fontName copyFrom: 1 to: firstDigit-1)
		with: (Integer readFromString: (fontName copyFrom: firstDigit to: lastDigit))
		with: (#('B' 'I' 'BI') indexOf:
					(fontName copyFrom: lastDigit+1 to: fontName size))

" (1 to: 12) collect: [:x | (TextStyle default fontAt: x) familySizeFace] "
