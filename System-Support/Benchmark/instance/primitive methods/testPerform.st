testPerform
	self test: [3 perform: #+ with: 4. 3 perform: #+ with: 4.
			  3 perform: #+ with: 4. 3 perform: #+ with: 4.
			  3 perform: #+ with: 4. 3 perform: #+ with: 4.
			  3 perform: #+ with: 4. 3 perform: #+ with: 4.
			  3 perform: #+ with: 4. 3 perform: #+ with: 4.
			  3 perform: #+ with: 4. 3 perform: #+ with: 4.
			  3 perform: #+ with: 4. 3 perform: #+ with: 4.
			  3 perform: #+ with: 4. 3 perform: #+ with: 4.
			  3 perform: #+ with: 4. 3 perform: #+ with: 4.
			  3 perform: #+ with: 4. 3 perform: #+ with: 4. nil]
		labeled: '3 perform: #+ with: 4, 20 times' repeated: 1000

	"Benchmark new testPerform"
