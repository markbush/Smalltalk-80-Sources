classNames
	"Answer a SortedCollection of all class names.  Use cached copy if available."

	CachedClassNames == nil ifTrue: [^self newClassNames].
	^CachedClassNames
