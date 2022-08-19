obsolete
	"Change the receiver to an obsolete class by changing its name to have the prefix -AnObsolete-, and nilling the fields of any instances."

	self isPointers ifTrue:
		[self allInstancesDo: [:instance | instance nilFields]]. 	"nil fields of instances"
	('AnObsolete*' match: name) ifFalse:
		[name _ 'AnObsolete' , name].
	classPool _ Dictionary new.
	self class obsolete.
	super obsolete
