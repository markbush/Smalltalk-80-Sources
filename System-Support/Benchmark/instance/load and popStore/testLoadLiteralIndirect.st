testLoadLiteralIndirect
	self test: [Point == Point. Point == Point.
			  Point == Point. Point == Point.
			  Point == Point. Point == Point.
			  Point == Point. Point == Point.
			  Point == Point. Point == Point. nil]
		labeled: 'load literal indirect (overflow refct), 20 times' repeated: 10000

	"Benchmark new testLoadLiteralIndirect"
