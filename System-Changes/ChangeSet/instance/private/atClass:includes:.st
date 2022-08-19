atClass: class includes: changeType
	^(classChanges at: class name ifAbsent: [^false])
		includes: changeType
