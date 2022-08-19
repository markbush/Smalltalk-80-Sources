open
	| f s a page len elen type |
	closed
	  ifTrue:
		["assume some defaults in case DSHAPE is not in SysDir leader page.
	these should only be needed if the disk is old (and not scavenged).
	they will not work if a 14 sector system is missing DSHAPE (unlikely) since
	addresses of first page of SysDir and DiskDescriptor might be computed incorrectly"
		nSectors _ 12.
		diskPages _ 812 * nSectors.
		totalPages _ 2 * diskPages.

		"read SysDir leader page to find out file system configuration.  see AltoFileSys.D".
		f _ self findKey: Dirname.
		f binary.
		"to prevent address of page 1 from being stored".
		f pageAddresses: nil.
		page _ f readPageNumber: 0.
		"length of property list, in words"
		len _ page at: 494.
		len = 210
		  ifTrue:
			["scan file properties for DSHAPE"
			s _ page asFileStream: ExternalStream new.
			s skipWords: (page at: 493).
			[len > 0] whileTrue:
				[type _ s next.
				type = 0
				  ifTrue: [
					"0 terminates list. property not found.
					try to read it later from DiskDescriptor"
					len _ 0]
				  ifFalse:
					[elen _ s next.
					(type = 1 and: [elen = 5])
					  ifTrue:
						["DSHAPE. read property"
						self configure: s.
						"set flags so configure and loop are not done again"
						s _ false.
						len _ 0]
					  ifFalse:
						["skip over other property"
						len _ len - elen.
						s skipWords: elen - 1]]]].

		"now, with the correct (or default) file system configuration,
		store the virtual address of next page (1), and create a FileStream on SysDir"
		a _ AltoFileAddressArray new directory: self.
		a addLast: (page headerWordAt: Nextp).
		f pageAddresses: a.
		dirFile _ f asFileStream.
		dirFile readOnly.

		bitsFile _ self oldFile: 'DiskDescriptor'.
		bitsFile binary.
		bitsFile readWrite.
		closed _ false.
		s
		  ifTrue:
			["configuration not read from SysDir. this will work for 12 sector systems.
			14 sector systems should have had the DSHAPE property"
			self configure: bitsFile].
		super open]
