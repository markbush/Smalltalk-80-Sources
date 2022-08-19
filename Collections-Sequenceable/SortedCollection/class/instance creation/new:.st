new: anInteger
	"The default sorting function is a <= comparison on elements."

	^(super new: anInteger) sortBlock: [:x :y | x <= y]
