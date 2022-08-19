window: aWindow viewport: aViewport
	"Answer an instance of me with a scale and translation based on aWindow and
	aViewport. The scale and translation are computed such that aWindow, when
	transformed, coincides with aViewport. "

	| scale translation |
	aViewport width = aWindow width & (aViewport height = aWindow height)
		ifTrue:
			[scale _ nil]
		ifFalse:
			[scale _ aViewport width asFloat / aWindow width asFloat
						@ (aViewport height asFloat / aWindow height asFloat)].
	scale == nil
		ifTrue: [translation _ aViewport left - aWindow left
								@ (aViewport top - aWindow top)]
		ifFalse: [translation _ aViewport left - (scale x * aWindow left)
								@ (aViewport top - (scale y * aWindow top))].
	^self new setScale: scale translation: translation
