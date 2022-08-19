fontAt: index
	"This is private because no object outside TextStyle should depend on the representation of the font family in fontArray"
	| fontIndex |

	fontIndex _ index.
	fontIndex > fontArray size
		ifTrue:	[fontIndex _ fontArray size].
	fontIndex < 0
		ifTrue:	[fontIndex _ 1].
	((fontArray at: fontIndex) isMemberOf: StrikeFont)
		ifTrue: [^fontArray at: fontIndex].
	((fontArray at: 1)
		isMemberOf: StrikeFont)
			ifTrue: [^fontArray at: 1].
	self error: 'No valid fonts in font array'.
