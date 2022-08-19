compileAllFrom: oldClass
	"Compile all the methods in oldClass's method dictionary.
	See recompile:from: regarding oldClass, which is normally just self."

	self selectors do: [:sel | self recompile: sel from: oldClass]
