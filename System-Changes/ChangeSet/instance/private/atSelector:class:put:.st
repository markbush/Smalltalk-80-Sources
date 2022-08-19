atSelector: selector class: class put: changeType
	| name dict |
	(self isNew: class) ifTrue: [^self]. 	"Don't keep method changes for new classes"
	name _ class name.
	(methodChanges at: name
		ifAbsent:
			[dict _ IdentityDictionary new.
			methodChanges at: name put: dict.
			dict])
		at: selector put: changeType
