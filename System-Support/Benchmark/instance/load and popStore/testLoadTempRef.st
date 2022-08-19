testLoadTempRef
	| temp |
	temp _ 0@0.
	self test: [temp == temp. temp == temp.
			  temp == temp. temp == temp.
			  temp == temp. temp == temp.
			  temp == temp. temp == temp.
			  temp == temp. temp == temp. nil]
		labeled: 'load 0@0, 20 times' repeated: 10000

	"Benchmark new testLoadTempRef"
