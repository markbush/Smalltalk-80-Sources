wordAt: aWordIndex
	"Answer the data word associated with aWordIndex."

	^page wordAt: (self dataIndex: aWordIndex size: 2)
