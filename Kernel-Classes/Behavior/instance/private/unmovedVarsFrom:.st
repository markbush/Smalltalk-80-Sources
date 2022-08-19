unmovedVarsFrom: sup
	"Answer with an Array with true for fields with the same offset in this class as in super"
	| allInstVarNames supNames |
	allInstVarNames _ self allInstVarNames.
	supNames _ sup allInstVarNames.
	^ ((1 to: sup instSize) collect: [:i | (supNames at: i) = (allInstVarNames at: i)])
