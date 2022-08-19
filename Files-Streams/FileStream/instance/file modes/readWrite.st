readWrite
	"Set the receiver's mode so that pages are flushed, end of file can be extended by
	writing, and closing does not truncate file."
	self setMode: Read + Write
