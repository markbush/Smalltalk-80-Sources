testArrayAt
	| array index |
	array _ #(1 2 3 4 5 6).
	index _ 4.
	self test:
			[array at: index. array at: index. array at: index. array at: index.
			 array at: index. array at: index. array at: index. array at: index.
			 array at: index. array at: index. array at: index. array at: index.
			 array at: index. array at: index. array at: index. array at: index.
			 array at: index. array at: index. array at: index. array at: index. nil]
		labeled: 'send #at: 20 times (to an array)' repeated: 1000

	"Benchmark new testArrayAt"
