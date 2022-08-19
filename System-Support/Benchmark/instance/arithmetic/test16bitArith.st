test16bitArith
	| twentyK |
	twentyK _ 20000.
	self test: [twentyK+twentyK. twentyK+twentyK.
			  twentyK+twentyK. twentyK+twentyK.
			  twentyK+twentyK. twentyK+twentyK.
			  twentyK+twentyK. twentyK+twentyK.
			  twentyK+twentyK. twentyK+twentyK. nil]
		labeled: 'add 20000 + 20000, 10 times' repeated: 1000

	"Benchmark new test16bitArith"
