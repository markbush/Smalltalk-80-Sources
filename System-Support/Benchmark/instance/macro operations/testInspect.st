testInspect
	| window |
	self test:
			[window _ InspectorView buildScheduledView:
							(Inspector inspect: Compiler new).
			  window release]
		labeled: 'create an inspector view' repeated: 10

	"Benchmark new testInspect"
