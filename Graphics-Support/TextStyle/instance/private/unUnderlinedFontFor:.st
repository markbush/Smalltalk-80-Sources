unUnderlinedFontFor: fontIndex
	| name thisFont unUnderlinedFontIndex unUnderlinedFont |
	name _ (thisFont _ fontArray at: fontIndex) name.
	(1 to: fontArray size)
		do:	[:unUnderlinedFontIndex |
			(unUnderlinedFont _
				fontArray at: unUnderlinedFontIndex) name = name
				ifTrue:	[(((unUnderlinedFont emphasis bitAt: UnderlinedBit) = 0)
							and: [(thisFont emphasis bitAnd: SubSuperscriptMask) =
									(unUnderlinedFont emphasis bitAnd: SubSuperscriptMask)])
							ifTrue:	[^unUnderlinedFontIndex]]].
	^ fontIndex
