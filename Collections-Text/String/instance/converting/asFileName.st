asFileName
	"Answer a string made up from the receiver that is an acceptable file name."
	^Disk checkName: self fixErrors: true
