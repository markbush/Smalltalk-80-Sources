pageNumberFrom: characterIndex
	"compute a page number from a character index"

	^characterIndex - 1 // self pageClass new dataSize + 1
