init: aContext
	initialProcess _ Process forContext: aContext priority: Processor activePriority.
	refcts _ ByteArray new: 49152.
	map _ WordArray new: 49152.
	file _ Disk file: 'clone.im'.
	file binary.
	ot _ Disk file: 'ot.scratch'.
	ot binary.
	holder _ ReadWriteStream on: (Array new: 100).
	maxOop _ 0.
	self clamp: self.
	self initDict
