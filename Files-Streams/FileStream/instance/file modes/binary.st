binary
	"Set the receiver's file to be binary mode."

	self file binary.
	"fix up current page"
	page binary.
	self on: page
