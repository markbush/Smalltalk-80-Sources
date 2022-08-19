nextPutAll: aCollection
	"Append the elements of aCollection onto the receiver.  Answer aCollection."

	aCollection do: [:v | self nextPut: v].
	^aCollection
