fontAscentDelta
	| currentFont previousFont actualAscent scriptFudge |

	scriptFudge _ 2.
	previousFont _ (textStyle fontAt: (text emphasisAt: ((lastIndex - 1) max: 1))).
	currentFont _ font.

	((currentFont emphasis bitAt: SubscriptedBit) = 1)
		ifTrue:	[^ textStyle baseline - scriptFudge]
		ifFalse:	[((currentFont emphasis bitAt: SuperscriptedBit) = 1)
					ifTrue:	[^ textStyle baseline
								- previousFont ascent - currentFont ascent + scriptFudge]
					ifFalse:	[^ textStyle baseline - currentFont ascent]].
