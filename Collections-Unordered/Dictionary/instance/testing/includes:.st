includes: anObject
	self do: [:each | anObject = each ifTrue: [^true]].
	^false
