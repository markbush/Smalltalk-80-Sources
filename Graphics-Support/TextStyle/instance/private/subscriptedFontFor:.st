subscriptedFontFor: fontIndex

	| name thisFont subscriptedFontIndex subscriptedFont |
	name _ (thisFont _ fontArray at: fontIndex) name.
	(1 to: fontArray size)
		do:	[:subscriptedFontIndex |
			(subscriptedFont _
				fontArray at: subscriptedFontIndex) name = name
				ifTrue:	[(((subscriptedFont emphasis bitAt: SubscriptedBit) = 1)
							and: [(thisFont emphasis bitAt: Underlined) =
									(subscriptedFont emphasis bitAt: Underlined)])
							ifTrue:	[^subscriptedFontIndex]]].
	^ fontIndex
