bindTemp: name
	"Declare a temporary; error not if a field or class variable."

	(scopeTable includesKey: name)
		ifTrue: [^self notify: 'Name is already defined'].
	^self reallyBindTemp: name
