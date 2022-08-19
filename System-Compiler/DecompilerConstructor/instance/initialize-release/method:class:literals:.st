method: aMethod class: aClass literals: literals
	method _ aMethod.
	instVars _ aClass allInstVarNames.
	nArgs _ method numArgs.
	literalValues _ literals
