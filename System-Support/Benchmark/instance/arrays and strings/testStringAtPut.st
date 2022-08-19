testStringAtPut
	| string index char |
	string _ 'abcdefg'.
	index _ 4.
	char _ $q.
	self test:
			[string at: index put: char. string at: index put: char.
			 string at: index put: char. string at: index put: char.
			 string at: index put: char. string at: index put: char.
			 string at: index put: char. string at: index put: char.
			 string at: index put: char. string at: index put: char.
			 string at: index put: char. string at: index put: char.
			 string at: index put: char. string at: index put: char.
			 string at: index put: char. string at: index put: char.
			 string at: index put: char. string at: index put: char.
			 string at: index put: char. string at: index put: char. nil]
		labeled: 'send #at:put: 20 times (to a string)' repeated: 1000

	"Benchmark new testStringAtPut"
