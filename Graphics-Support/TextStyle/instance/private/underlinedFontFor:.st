underlinedFontFor: fontIndex
	| name thisFont underlinedFontIndex underlinedFont |
	name _ (thisFont _ fontArray at: fontIndex) name.
	(1 to: fontArray size)
		do:	[:underlinedFontIndex |
			(underlinedFont _
				fontArray at: underlinedFontIndex) name = name
				ifTrue:	[(((underlinedFont emphasis bitAt: UnderlinedBit) = 1)
							and: [(thisFont emphasis bitAnd: SubSuperscriptMask) =
									(underlinedFont emphasis bitAnd: SubSuperscriptMask)])
							ifTrue:	[^underlinedFontIndex]]].
	^ fontIndex
