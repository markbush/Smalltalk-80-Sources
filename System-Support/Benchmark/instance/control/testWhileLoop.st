testWhileLoop
	| temp |
	self test: [temp _ 10000.
			  [temp > 0] whileTrue: [temp _ temp - 1].
			  nil]
		labeled: 'simple whileLoop, 10000 times through' repeated: 10

	"Benchmark new testWhileLoop"
