testLoadTempNRef
	| temp |
	temp _ 1.
	self test: [temp == temp. temp == temp.
			  temp == temp. temp == temp.
			  temp == temp. temp == temp.
			  temp == temp. temp == temp.
			  temp == temp. temp == temp. nil]
		labeled: 'load 1 as a temp, 20 times' repeated: 10000

	"Benchmark new testLoadTempNRef"
