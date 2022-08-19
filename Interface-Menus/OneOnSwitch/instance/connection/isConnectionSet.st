isConnectionSet
	"Answer whether the receiver is connected to an object that coordinates
	updates among switches."
	connection == nil
		ifTrue: [^false]
		ifFalse: [^true]
