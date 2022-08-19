subclassOf: sup and: others
	| newMeta |
	newMeta _ super subclassOf: sup.
	newMeta setOtherSuperclasses: others.
	^newMeta
