testCreation
	self test:
			[Point new. Point new. Point new. Point new. Point new.
			  Point new. Point new. Point new. Point new. Point new.
			  Point new. Point new. Point new. Point new. Point new.
			  Point new. Point new. Point new. Point new. Point new. nil]
		labeled: 'create 20 uninitialized points' repeated: 1000

	"Benchmark new testCreation"
