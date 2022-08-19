at: aByteIndex
	"Answer the data byte associated with aByteIndex."

	^page at: (self dataIndex: aByteIndex size: 1)
