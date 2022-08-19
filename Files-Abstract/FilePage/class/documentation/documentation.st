documentation
	"My subclasses are expected to implement the following messages.  These are
	provided as self subclassResponsibility.  Some are optional for implementation,
	depending on the representation of the actual file page;  for some, defaults are
	provided.

	testing
		size
	page initialization
		pageNumber:
	page accessing
		[optional] address
		[optional] address:
		[optional] pageNumber
		[optional] pageNumber:
		[optional] serialNumber:
	page testing
		[default] dataSize
		[default] headerSize
		[default] trailerSize
	file/page/directory implementation
		size:
"
