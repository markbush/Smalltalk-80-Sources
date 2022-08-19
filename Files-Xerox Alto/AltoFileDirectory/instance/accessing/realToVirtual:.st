realToVirtual: address
	"Convert the argument, address, from a real address to a virtual address."

	^(( address bitShift: -12) bitAnd: 8r17) "sector: field"
	  + (nSectors * ((address bitAnd: 8r7774) bitShift: -2)) "cylinder and head: field*"
	  +  "disk: field*pages per disk"
		((address bitAnd: 2) = 2 "diskPages*(address bitAnd: 2)//2"
		  ifTrue: [diskPages]
		  ifFalse: [0])
