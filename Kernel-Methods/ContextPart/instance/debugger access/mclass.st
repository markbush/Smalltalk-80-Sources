mclass
	"Answer the class in which the receiver's method was found."

	| mclass |
	self receiver class selectorAtMethod: self method setClass: [:mclass].
	^mclass
