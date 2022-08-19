testSize
	| string |
	string _ 'abcde'.
	self test:
			[string size. string size. string size. string size. string size.
			 string size. string size. string size. string size. string size.
			 string size. string size. string size. string size. string size.
			 string size. string size. string size. string size. string size. nil]
		labeled: 'send #size 20 times (to a string)' repeated: 1000

	"Benchmark new testSize"
