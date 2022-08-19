mappedBy: aSequenceableCollection
	"Answer a new instance of MappedCollection whose contents is the
	receiver and whose map is the argument, aSequencableCollection."

	^(MappedCollection collection: self map: aSequenceableCollection) contents
