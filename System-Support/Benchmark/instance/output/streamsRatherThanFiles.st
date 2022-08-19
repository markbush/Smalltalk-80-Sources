streamsRatherThanFiles
	"Should the named outputs be (internal Smalltalk-80) streams rather than disk files?
	They should if there is no file system.
	Feel free to change this method if you have a file system but want streams anyway."

	^Disk == nil
