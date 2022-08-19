subclasses
	"Answer the receiver's subclasses."
	| temp |
	self == Class class
		ifTrue: ["Meta-Object is exceptional subclass of Class"
				temp _ thisClass subclasses copy.
				temp remove: Object class.
				^temp collect: [:aSubClass | aSubClass class]].
	thisClass == nil
		ifTrue: [^Set new]
		ifFalse: [^thisClass subclasses collect: [:aSubClass | aSubClass class]]
