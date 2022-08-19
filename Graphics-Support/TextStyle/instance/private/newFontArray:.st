newFontArray: anArray
	fontArray _ anArray.
	lineGrid _ DefaultLineGrid.
	baseline _ DefaultBaseline.
	alignment _ 0.
	firstIndent _ 0.
	restIndent _ 0.
	rightIndent _ 0.
	outputMedium _ #Display.
	tabsArray _ DefaultTabsArray.
	marginTabsArray _ DefaultMarginTabsArray

	"Currently there is no supporting protocol for changing these arrays.  If an editor wishes to implement margin setting, then a copy of the default should be stored as these instance variables."
