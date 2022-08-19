obsoleteInstanceCounts
	"Compute the number of instances of each obsolete class.
	Smalltalk obsoleteInstanceCounts "

	| obsolete count |
	obsolete _ Dictionary new.
	self obsoleteClasses do:
		[:class |
		count _ class instanceCount.
		count > 0 ifTrue: [obsolete at: class put: count]].
	^obsolete
