virtualToReal: vadr
	 "inverse of realToVirtual:"

	| sec d |
	vadr < diskPages
	  ifTrue: [d _ 0. sec _ vadr] "d _ (vadr // diskPages) bitShift: 1"
	  ifFalse: [d _ 2. sec _ vadr \\ diskPages].
	^"disk" d +
	"cylinder & head" (sec // nSectors bitShift: 2) + "(sec \\ nSectors) bitShift: 12"
	"sector" (#(0 8r10000 8r20000 8r30000 8r40000 8r50000 8r60000 8r70000
		8r100000 8r110000 8r120000 8r130000 8r140000 8r150000 8r160000 8r170000)
		at: (sec \\ nSectors + 1))  "Indexing is faster than LargeInteger arithmetic!"
