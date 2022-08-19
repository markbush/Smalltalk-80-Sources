process: aProcess context: aContext interrupted: aBoolean
	sourceCode _ nil.
	shortStack _ true.
	processHandle _ ProcessHandle on: aProcess at: aContext interrupted: aBoolean
