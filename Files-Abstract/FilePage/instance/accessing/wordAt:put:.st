wordAt: aWordIndex put: aWord
	"Put aWord at location aWordIndex.  Answer aWord."
	^page wordAt: (self dataIndex: aWordIndex size: 2) put: aWord
