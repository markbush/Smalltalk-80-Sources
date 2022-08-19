size: aByteIndex
	"Set the number of data characters the receiver contains to be aByteIndex.
	aByteIndex <= dataSize on last page; aByteIndex = dataSize on earlier
	pages)."

	^self subclassResponsibility
