addKey: aFileName
	"If a file whose name is aFileName exists and the receiver does not know how
	to create a new version, the create an error.  Otherwise create a new empty file."

	^self add: (self initFileName: aFileName)
