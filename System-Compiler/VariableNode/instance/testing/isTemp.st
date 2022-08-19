isTemp
	"Answer true if this describes a temporary variable"

	code < 0
		ifTrue: [^code = LdTempType negated].
	code > 255
		ifTrue: [^code
					between: LdTempType * 256
					and: LdTempType * 256 + 255].
	^code
		between: (CodeBases at: 2)
		and: (CodeBases at: 2) + (CodeLimits at: 2) - 1
