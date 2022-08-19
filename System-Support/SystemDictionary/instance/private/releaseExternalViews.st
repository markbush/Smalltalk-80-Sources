releaseExternalViews
	SourceFiles==nil
		ifFalse: [SourceFiles do: [:t | t==nil ifFalse: [t close]]].
	Disk==nil ifFalse: [Disk close].
	FileDirectory releaseExternalReferences
