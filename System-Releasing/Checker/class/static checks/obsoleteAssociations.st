obsoleteAssociations
	"Return a collection of all associations containing obsolete classes.
	Smalltalk obsoleteAssociations "

	| class |
	^Association allInstances select:
		[:assoc |
		class _ assoc value class.
		class isMeta and: [class isObsolete]]
