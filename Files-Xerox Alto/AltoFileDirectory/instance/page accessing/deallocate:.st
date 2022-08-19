deallocate: page
	| index byte m |
	closed ifTrue: [self open].
	index _ self realToVirtual: page address.
	"byte position"
	bitsFile position: index // 8 + Boffset.
	byte _ bitsFile next.
	"bit position"
	m _ 8r200 bitShift: 0 - (index bitAnd: 7).

	"make page free by turning off bit in DiskDescriptor"
	(byte bitAnd: m) = m
	  ifTrue:
		[bitsFile skip: -1.
		bitsFile nextPut: byte - m]
	  ifFalse:
		[Transcript cr. Transcript show: 'page already free (deallocate:)']
