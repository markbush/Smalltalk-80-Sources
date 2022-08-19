testBasicAt
	| coll index |
	coll _ Set new: 16.
	index _ 5.
	self test:
			[coll basicAt: index. coll basicAt: index. coll basicAt: index. coll basicAt: index.
			 coll basicAt: index. coll basicAt: index. coll basicAt: index. coll basicAt: index.
			 coll basicAt: index. coll basicAt: index. coll basicAt: index. coll basicAt: index.
			 coll basicAt: index. coll basicAt: index. coll basicAt: index. coll basicAt: index.
			 coll basicAt: index. coll basicAt: index. coll basicAt: index. coll basicAt: index. nil]
		labeled: 'send #basicAt: 20 times (to a set)' repeated: 1000

	"Benchmark new testBasicAt"
