unSubscriptedFontFor: fontIndex
	| name thisFont unSubscriptedFontIndex unSubscriptedFont |
	name _ (thisFont _ fontArray at: fontIndex) name.
	(1 to: fontArray size)
		do:	[:unSubscriptedFontIndex |
			(unSubscriptedFont _
				fontArray at: unSubscriptedFontIndex) name = name
				ifTrue:	[(((unSubscriptedFont emphasis bitAt: SubscriptedBit) = 0)
							and: [(thisFont emphasis bitAt: Underlined) =
									(unSubscriptedFont emphasis bitAt: Underlined)])
							ifTrue:	[^unSubscriptedFontIndex]]].
	^ fontIndex
