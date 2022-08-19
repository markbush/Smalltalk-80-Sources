atClass: class add: changeType
	(self isNew: class) ifFalse: 	"new classes don't matter"
		[(classChanges at: class name
				ifAbsent: [^classChanges at: class name put:
					(Set with: changeType)])
			add: changeType]
