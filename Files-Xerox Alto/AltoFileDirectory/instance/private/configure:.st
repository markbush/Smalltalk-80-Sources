configure: s
	"read disk configuration from a Stream:
		either leader page of SysDir or beginning of DiskDescriptor"

	| nDisks nHeads nTracks |
	nDisks _ s nextWord .
	nTracks _ s nextWord.
	nHeads _ s nextWord.
	nSectors _ s nextWord.
	diskPages _ nTracks * nHeads * nSectors.
	totalPages _ nDisks * diskPages
