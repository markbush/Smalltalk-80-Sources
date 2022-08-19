readWriteShorten
	"Same as readWrite except close truncates file at current position."
	self setMode: Read + Write + Shorten
