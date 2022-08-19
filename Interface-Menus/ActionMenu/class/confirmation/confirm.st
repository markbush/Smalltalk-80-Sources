confirm  "ActionMenu confirm"
	^ (ActionMenu labels: 'confirm\abort' withCRs selectors: nil) startUp = 1
