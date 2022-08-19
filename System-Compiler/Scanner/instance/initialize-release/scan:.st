scan: inputStream
	"Bind the input stream, fill the character buffers and first token buffer"
	self on: inputStream.
	self scanToken
