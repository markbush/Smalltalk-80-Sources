unSuperscriptedFontFor: fontIndex
	| name thisFont unSuperscriptedFontIndex unSuperscriptedFont |
	name _ (thisFont _ fontArray at: fontIndex) name.
	(1 to: fontArray size)
		do:	[:unSuperscriptedFontIndex |
			(unSuperscriptedFont _
				fontArray at: unSuperscriptedFontIndex) name = name
				ifTrue:	[(((unSuperscriptedFont emphasis bitAt: SuperscriptedBit) = 0)
							and: [(thisFont emphasis bitAt: Underlined) =
									(unSuperscriptedFont emphasis bitAt: Underlined)])
							ifTrue:	[^unSuperscriptedFontIndex]]].
	^ fontIndex
