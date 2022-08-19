testArrayAtPut
	| array index element |
	array _ #(1 2 3 4 5 6).
	index _ 4.
	element _ 17.
	self test:
			[array at: index put: element. array at: index put: element.
			 array at: index put: element. array at: index put: element.
			 array at: index put: element. array at: index put: element.
			 array at: index put: element. array at: index put: element.
			 array at: index put: element. array at: index put: element.
			 array at: index put: element. array at: index put: element.
			 array at: index put: element. array at: index put: element.
			 array at: index put: element. array at: index put: element.
			 array at: index put: element. array at: index put: element.
			 array at: index put: element. array at: index put: element. nil]
		labeled: 'send #at:put: 20 times (to an array)' repeated: 1000

	"Benchmark new testArrayAtPut"
