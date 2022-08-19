testActivationReturn
	self test:
			[self recur: 14]
		labeled: 'activate and return, 32K times' repeated: 1

	"Benchmark new testActivationReturn"
