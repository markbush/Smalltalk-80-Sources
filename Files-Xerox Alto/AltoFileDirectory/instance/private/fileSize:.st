fileSize: file
	"return size in characters of a directory entry

	entry format
		1	n (length in words, including this one) + undeleted bit (dfmask)
		2-3	serialNumber
		4	version
		5	file number (0?)
		6	virtual address of page 0
		7-n name as Bcpl string (extra 0 if length even)"

	^13 "header word, sn, version, fn, leader, name" + (file fileName size bitOr: 1)
