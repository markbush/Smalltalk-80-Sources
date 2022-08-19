amountToTranslateWithin: aRectangle
	"Answer a Point, delta, such that self + delta is forced within aRectangle."

	| delta |
	delta _ 0@0.
	self left < aRectangle left ifTrue: [delta x: aRectangle left - self left].
	self top < aRectangle top ifTrue: [delta y: aRectangle top - self top].
	self right > aRectangle right ifTrue: [delta x: aRectangle right - self right].
	self bottom > aRectangle bottom ifTrue: [delta y: aRectangle bottom - self bottom].
	^delta
