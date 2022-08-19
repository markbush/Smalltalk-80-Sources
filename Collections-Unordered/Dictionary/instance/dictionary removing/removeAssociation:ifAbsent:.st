removeAssociation: anAssociation ifAbsent: anExceptionBlock
	"Remove the key and value association, anAssociation, from the receiver.  If not found, answer the result of evaluating anExceptionBlock, otherwise answer anAssociation."

	^super remove: anAssociation ifAbsent: anExceptionBlock
