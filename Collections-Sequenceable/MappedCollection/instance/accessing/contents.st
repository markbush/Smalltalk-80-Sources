contents
	"Answer the receiver's domain for mapping, a SequenceableCollection."
	^map collect: [:mappedIndex | domain at: mappedIndex]
