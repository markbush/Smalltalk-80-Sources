pc
	"used by encoder source mapping"
	pc == nil
		ifTrue: [^3].  "quick returns never generate, so pc=nil"
	^pc
