testEQ
	| temp |
	temp _ 1.
	self test: [temp == temp == temp == temp == temp ==
			  temp == temp == temp == temp == temp ==
			  temp == temp == temp == temp == temp ==
			  temp == temp == temp == temp == temp. nil]
		labeled: 'send ==, 20 times' repeated: 10000

	"Benchmark new testEQ"
