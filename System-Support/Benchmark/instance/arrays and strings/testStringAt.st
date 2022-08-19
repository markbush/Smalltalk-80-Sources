testStringAt
	| string index |
	string _ 'abcdefg'.
	index _ 4.
	self test:
			[string at: index. string at: index. string at: index. string at: index.
			 string at: index. string at: index. string at: index. string at: index.
			 string at: index. string at: index. string at: index. string at: index.
			 string at: index. string at: index. string at: index. string at: index.
			 string at: index. string at: index. string at: index. string at: index. nil]
		labeled: 'send #at: 20 times (to a string)' repeated: 1000

	"Benchmark new testStringAt"
