isAllWhite
	| count |
	count _ bits countBits.
	count = 0 ifTrue: [^true].
	count > 0 ifTrue: [^false].
	bits do: [:data | data ~= 0 ifTrue: [^false]].
	^true
