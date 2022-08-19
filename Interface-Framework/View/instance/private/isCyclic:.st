isCyclic: aView
	"Answers true if aView is the same as this View or its superView, false
	otherwise. "

	self == aView ifTrue: [^true].
	self isTopView ifTrue: [^false].
	^superView isCyclic: aView
