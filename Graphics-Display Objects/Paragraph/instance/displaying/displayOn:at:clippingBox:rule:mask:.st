displayOn: aDisplayMedium at: aDisplayPoint clippingBox: clipRectangle rule: ruleInteger mask: aForm
	"Default display message when aDisplayPoint is in absolute screen
	coordinates. "

	destinationForm _ aDisplayMedium.
	clippingRectangle _ clipRectangle.
	rule _ ruleInteger.
	mask _ aForm.
	compositionRectangle moveTo: aDisplayPoint.
	(lastLine == nil or: [lastLine < 1]) ifTrue: [self composeAll].
	self displayLines: (1 to: lastLine)
