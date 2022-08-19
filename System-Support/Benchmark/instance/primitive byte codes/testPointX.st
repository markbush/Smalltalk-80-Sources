testPointX
	| pt |
	pt _ 0@0.
	self test: [pt x. pt x. pt x. pt x. pt x. pt x. pt x. pt x. pt x. pt x. nil]
		labeled: 'execute aPoint x, 10 times' repeated: 10000

	"Benchmark new testPointX"
