asOop
	"Answer an Integer which is unique to me.  See below.
	Essential.  See also documentation in Object metaclass."
	<primitive: 75>
	self primitiveFailed
	"
	Non-Stretch mapping between objects and asOop value:
	oops 0...16K-1			-->	0...16K-1
	oops 16K...32K-1			-->	-16K...-1
	SmallIntegers 0...16K		-->	32K...48K-1
	SmallIntegers -16K...0	-->	48K...64K-1

	Stretch mapping between objects and asOop value:
	oops 0...48K-1			-->	0...48K-1
	SmallIntegers -8K...-1	-->	-16K...-2 even
	SmallIntegers 0...8K-1	-->	-(16K-1)...-1 odd

	Non-Stretch Consistency check:
	| obj |
	-16384 to: 16383 do:
		[:i | obj _ i asObject.
		(obj == #NonExistentObject or: [obj asOop = i])
			ifFalse: [self error: 'inconsistency']].
	32768 to: 65536 do:
		[:i | obj _ i asObject.
		(obj == #NonExistentObject or: [obj asOop = i])
			ifFalse: [self error: 'inconsistency']].

	Stretch Consistency check:
	| obj |
	-16384 to: 49151 do:
		[:i | obj _ i asObject.
		(obj == #NonExistentObject or: [obj asOop = i])
			ifFalse: [self error: 'inconsistency']].
	"
