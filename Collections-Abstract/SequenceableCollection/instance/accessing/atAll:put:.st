atAll: anInterval put: anObject
	"Put anObject at every index specified by the integer elements of anInterval."

	anInterval do: [:index | self at: index put: anObject]
