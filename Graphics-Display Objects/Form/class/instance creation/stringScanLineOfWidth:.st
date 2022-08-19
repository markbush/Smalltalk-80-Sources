stringScanLineOfWidth: width
	^self new extent: width@1 offset: 0@0 bits: (String new: width+15//16*2)
