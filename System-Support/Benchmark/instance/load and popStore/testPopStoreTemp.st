testPopStoreTemp
	| temp |
	self test: [temp _ 1. temp _ 1. temp _ 1. temp _ 1. temp _ 1.
			  temp _ 1. temp _ 1. temp _ 1. temp _ 1. temp _ 1.
			  temp _ 1. temp _ 1. temp _ 1. temp _ 1. temp _ 1.
			  temp _ 1. temp _ 1. temp _ 1. temp _ 1. temp _ 1. nil]
		labeled: 'store into a temp, 20 times' repeated: 10000

	"Benchmark new testPopStoreTemp"
