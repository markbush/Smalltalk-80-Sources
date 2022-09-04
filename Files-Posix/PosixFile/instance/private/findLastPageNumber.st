findLastPageNumber
	|bytes|
	"pages are numbered 1..N"
	bytes _ self sizeOnDisk.
	^ lastPageNumber _ ((bytes + self pageSize - 1) // self pageSize) max: 1
