testClass
	| pt |
	pt _ 0@0.
	self test:
			[pt class. pt class. pt class. pt class. pt class.
			 pt class. pt class. pt class. pt class. pt class.
			 pt class. pt class. pt class. pt class. pt class.
			 pt class. pt class. pt class. pt class. pt class. nil]
		labeled: 'send #class 20 times (to a point)' repeated: 1000

	"Benchmark new testClass"
