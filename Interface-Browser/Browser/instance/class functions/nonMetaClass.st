nonMetaClass
	^ meta
		ifTrue: [self selectedClass soleInstance]
		ifFalse: [self selectedClass]
