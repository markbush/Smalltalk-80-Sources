fileOutMessage: aString
	"Create a fileName which is the name of the receiver with -.st as the
	extension, and file a description of the receiver's message aString onto it"

	self fileOutMessage: aString
		fileName: (Disk checkName: self name , '-' , aString , '.st' fixErrors: true)
