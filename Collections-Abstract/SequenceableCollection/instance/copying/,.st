, aSequenceableCollection
	"Answer with a copy of the receiver concatenated with the argument,
	a SequencableCollection."

	^self copyReplaceFrom: self size + 1
		  to: self size
		  with: aSequenceableCollection
