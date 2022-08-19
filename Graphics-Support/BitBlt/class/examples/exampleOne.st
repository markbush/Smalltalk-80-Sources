exampleOne
	"This tests BitBlt by displaying the result of all sixteen combination rules
	that BitBlt is capable of using.  (Please see the Byte magazine article by D. Ingalls
	for the meaning of the combination rules and the complete documentation for
	BitBlt in SmallTalk-80.)"

	| path |
	path _ Path new.
	0 to: 3 do: [:i | 0 to: 3 do: [:j | path add: j * 100 @ (i * 100)]].
	Display white.
	path _ path translateBy: 100 @ 100.
	1 to: 16 do: [:index | BitBlt
			exampleAt: (path at: index)
			rule: index - 1
			mask: Form gray]

	"BitBlt exampleOne."
