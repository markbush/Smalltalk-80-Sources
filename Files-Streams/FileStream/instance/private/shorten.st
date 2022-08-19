shorten
	"normally called by close and not directly by user"

	page dataEnd: (readLimit _ position).
	page fromFileStream: self.
	self on: page endFile.
	position _ readLimit
