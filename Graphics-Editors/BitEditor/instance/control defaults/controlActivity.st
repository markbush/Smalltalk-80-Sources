controlActivity
	| absoluteScreenPoint formPoint displayPoint |
	super controlActivity.
	[sensor redButtonPressed]
	  whileTrue:
		[absoluteScreenPoint _ sensor cursorPoint.
		formPoint _ (view inverseDisplayTransform: absoluteScreenPoint - (scale//2)) rounded.
		displayPoint _ view displayTransform: formPoint.
		squareForm
			displayOn: Display
			at: displayPoint
			clippingBox: view insetDisplayBox
			rule: Form over
			mask: (Form perform: color).
		view changeValueAt: formPoint put:
			(#(white black gray) indexOf: color)-1].
