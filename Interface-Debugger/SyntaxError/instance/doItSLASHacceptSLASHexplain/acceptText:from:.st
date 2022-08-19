acceptText: aString from: aController
	"Compile the code in aString and notify aController of any errors.
	Proceed if successful."

	(class
		compile: aString
		classified: ClassOrganizer defaultProtocol
		notifying: aController)
		== nil
			ifTrue: [^false]
			ifFalse: [^true]
