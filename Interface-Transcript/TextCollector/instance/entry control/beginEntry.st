beginEntry
	"To speed up appending information to the receiver, a WriteStream is
	maintained.  Initialize it."
	entryStream _ WriteStream on: (String new: 200)
