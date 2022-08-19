initialize
	"Initialize class variables specifying the size of the temporary frame
	needed to run instances of me, and the size of my instances' header
	and literals (which may be system-dependent.)"

	SmallFrame _ 12.	"Context range for temps+stack"
	LargeFrame _ 32.
	BytesForHeader _ (self newMethod: 0 header: 0) size.  "Just a header, no literals"
	BytesPerLiteral _ (self newMethod: 0 header: 1) size - BytesForHeader.  "1 literal"
	"CompiledMethod initialize."
