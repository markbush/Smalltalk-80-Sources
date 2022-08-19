superscriptedFontFor: fontIndex
	| name thisFont superscriptedFontIndex superscriptedFont |
	name _ (thisFont _ fontArray at: fontIndex) name.
	(1 to: fontArray size)
		do:	[:superscriptedFontIndex |
			(superscriptedFont _
				fontArray at: superscriptedFontIndex) name = name
				ifTrue:	[(((superscriptedFont emphasis bitAt: SuperscriptedBit) = 1)
							and: [(thisFont emphasis bitAt: Underlined) =
									(superscriptedFont emphasis bitAt: Underlined)])
							ifTrue:	[^superscriptedFontIndex]]].
	^ fontIndex
