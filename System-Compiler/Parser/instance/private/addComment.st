addComment
	parseNode ~~ nil
		ifTrue:
			[parseNode comment: currentComment.
			currentComment _ nil]
