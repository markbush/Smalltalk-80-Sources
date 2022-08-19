initialize
	"Subclasses of File may want to share variables in pools.
	Execute before filin:  Smalltalk at: #XFilePool as: (Dictionary: 16).
	in XFile initialize."

	FilePool at: #Read put: 1.
	FilePool at: #Write put: 2.
	FilePool at: #Shorten put: 3
