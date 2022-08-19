marginTabsLevel: anInteger
	"Set the depth of 'nesting' for this paragraph -- an index into the marginTabsArray in the textStyle."
	marginTabsLevel _ (anInteger max: 0) min: textStyle nestingDepth.

"Check if we've nested so far that there is no room between the effective margins."
	[(self leftMarginForCompositionForLine: 1) >= (self rightMarginForComposition)
		and: [marginTabsLevel > 0]]
		whileTrue:
			[marginTabsLevel _ (marginTabsLevel - 1 max: 0)].
	[(self leftMarginForCompositionForLine: 2) >= (self rightMarginForComposition)
		and: [marginTabsLevel > 0]]
		whileTrue:
			[marginTabsLevel _ (marginTabsLevel - 1 max: 0)].
	self composeAll.
