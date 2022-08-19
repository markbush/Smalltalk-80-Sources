at: aByteIndex put: aByte
	"Put the date byte, aByte, at location aByteIndex.  Answer aByte."
	^page at: (self dataIndex: aByteIndex size: 1) put: aByte
