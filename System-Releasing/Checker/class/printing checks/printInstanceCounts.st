printInstanceCounts
	"Smalltalk printInstanceCounts. (Disk file: 'Instance.counts') edit."

	| file |
	file _ Disk file: 'Instance.counts'.
	Smalltalk timeStamp: file.
	Smalltalk
		instanceCountsAndSpaceDo:
			[:class :count :nwords |
			file cr; nextPutAll: class name.
			(25 - class name size) timesRepeat: [file space].
			file print: count; tab; print: nwords].
	file close
