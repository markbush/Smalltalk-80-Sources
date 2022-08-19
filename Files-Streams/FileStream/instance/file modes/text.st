text
	"Set the receiver's file to be in text mode."

	self file text.
	"fix up current page"
	page text.
	self on: page
