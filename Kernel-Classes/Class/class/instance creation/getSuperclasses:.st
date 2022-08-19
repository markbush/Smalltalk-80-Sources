getSuperclasses: superNames
	| supers |
	"find the superclasses corresponding to the superclass names"
	supers _ (Scanner new scanTokens: superNames) collect:
		[:each | Smalltalk at: each].
	"check that each is a kind of Behavior"
	supers do: [:each | (each isKindOf: Behavior) ifFalse:
		[self error: 'superclass must be a class-describing object']].
	^supers
