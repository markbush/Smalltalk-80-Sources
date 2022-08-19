removeAssociation: anAssociation
	"Remove the key and value association, anAssociation, from the receiver.  Answer anAssociation."

	^self removeAssociation: anAssociation ifAbsent: [self errorNotFound]
