emphasizeFrom: start to: stop with: emphasis
	"Set the emphasis for characters in the interval start-stop."

	runs _
		runs
			copyReplaceFrom: start
			to: stop
			with: (RunArray new: stop - start + 1 withAll: emphasis)
