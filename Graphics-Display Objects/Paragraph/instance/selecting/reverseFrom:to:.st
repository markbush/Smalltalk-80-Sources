reverseFrom: characterBlock1 to: characterBlock2
	"Reverse area between the two character blocks given as arguments."

	| start stop |
	characterBlock1 = characterBlock2 ifTrue: [^self].
	characterBlock1 < characterBlock2
		ifTrue: [start _ characterBlock1. stop _ characterBlock2]
		ifFalse: [start _ characterBlock2. stop _ characterBlock1].
	start top = stop top ifTrue: [
		^self reverseRectangle: (start origin corner: stop bottomLeft)].
	self reverseRectangle:
	 (start origin corner: compositionRectangle right @ start bottom).
	self reverseRectangle:
	 (compositionRectangle left@start bottom corner: compositionRectangle right@stop top).
	self reverseRectangle: (compositionRectangle left@stop top corner: stop bottomLeft).
