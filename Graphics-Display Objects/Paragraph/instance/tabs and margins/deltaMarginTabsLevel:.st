deltaMarginTabsLevel: anInteger
	"Delta the depth of 'nesting' for this paragraph -- an index into the marginTabsArray in the textStyle."
	self marginTabsLevel: anInteger + marginTabsLevel.
