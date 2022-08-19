test: aBlock labeled: label repeated: nTimes
	"This is the main message to a Benchmark. aBlock is repeated nTimes, and the
	results are reported."

	| time |
	time _ self time: aBlock repeated: nTimes.
	self
		report: label
		timedAt: time
		repeated: nTimes
