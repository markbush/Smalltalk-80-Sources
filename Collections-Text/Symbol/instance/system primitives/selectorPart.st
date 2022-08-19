selectorPart
	"return just my part after the class name if the receiver is a compound selector
	 (otherwise the whole thing)"
	^(self copyFrom: (self indexOf: $.) + 1 to: self size) asSymbol
