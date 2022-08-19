testStreamNext
	| strm |
	strm _ ReadStream on: 'abcdefghijklmnopqrstuvwxyz'.
	self test: [strm position: 0.
			  strm next. strm next. strm next. strm next.
			  strm next. strm next. strm next. strm next.
			  strm next. strm next. strm next. strm next.
			  strm next. strm next. strm next. strm next.
			  strm next. strm next. strm next. strm next. nil]
		labeled: 'execute ReadStream next, 20 times' repeated: 1000

	"Benchmark new testStreamNext"
