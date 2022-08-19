testLargeIntArith
	| eightyK |
	eightyK _ 80000.
	self test: [eightyK+eightyK. eightyK+eightyK.
			  eightyK+eightyK. eightyK+eightyK.
			  eightyK+eightyK. eightyK+eightyK.
			  eightyK+eightyK. eightyK+eightyK.
			  eightyK+eightyK. eightyK+eightyK. nil]
		labeled: 'add 80000 + 80000, 10 times' repeated: 100

	"Benchmark new testLargeIntArith"
