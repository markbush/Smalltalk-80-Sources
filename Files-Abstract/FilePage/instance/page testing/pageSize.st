pageSize
	"Answer the total size of the receiver's page, in bytes."

	^self headerSize + self dataSize + self trailerSize
