testBasicAtPut
	| coll index element |
	coll _ Set new: 16.
	index _ 5.
	element _ 17.
	self test:
			[coll basicAt: index put: element. coll basicAt: index put: element.
			 coll basicAt: index put: element. coll basicAt: index put: element.
			 coll basicAt: index put: element. coll basicAt: index put: element.
			 coll basicAt: index put: element. coll basicAt: index put: element.
			 coll basicAt: index put: element. coll basicAt: index put: element.
			 coll basicAt: index put: element. coll basicAt: index put: element.
			 coll basicAt: index put: element. coll basicAt: index put: element.
			 coll basicAt: index put: element. coll basicAt: index put: element.
			 coll basicAt: index put: element. coll basicAt: index put: element.
			 coll basicAt: index put: element. coll basicAt: index put: element. nil]
		labeled: 'send #basicAtPut: 20 times (to a set)' repeated: 1000

	"Benchmark new testBasicAtPut"
