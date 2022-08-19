beSnapshotFile
	^self
		beSnapshotSerialNumber: (self serialNumber)
		leaderVirtualDiskAddr: (fileDirectory realToVirtual: self leader)
