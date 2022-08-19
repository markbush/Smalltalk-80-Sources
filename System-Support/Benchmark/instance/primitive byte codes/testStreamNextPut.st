testStreamNextPut
	| strm ch |
	strm _ ReadWriteStream on: 'abcdefghijklmnopqrstuvwxyz'.
	ch _ $q.
	self test: [strm position: 0.
			  strm nextPut: ch. strm nextPut: ch. strm nextPut: ch. strm nextPut: ch.
			  strm nextPut: ch. strm nextPut: ch. strm nextPut: ch. strm nextPut: ch.
			  strm nextPut: ch. strm nextPut: ch. strm nextPut: ch. strm nextPut: ch.
			  strm nextPut: ch. strm nextPut: ch. strm nextPut: ch. strm nextPut: ch.
			  strm nextPut: ch. strm nextPut: ch. strm nextPut: ch. strm nextPut: ch. nil]
		labeled: 'execute ReadWriteStream nextPut:, 20 times' repeated: 1000

	"Benchmark new testStreamNextPut"
