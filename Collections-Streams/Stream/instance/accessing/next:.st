next: anInteger
	"Answer an OrderedCollection of the next anInteger number of random numbers."
	| aCollection |
	aCollection _ OrderedCollection new.
	anInteger timesRepeat: [aCollection addLast: self next].
	^aCollection
