tallyPath: context
	| aMethod path |
	aMethod _ context method.
	receivers do:
		[:aMessageTally |
		aMessageTally method == aMethod ifTrue: [path _ aMessageTally]].
	path == nil
		ifTrue:
			[path _ MessageTally new class: context receiver class method: aMethod.
			receivers _ receivers copyWith: path].
	^path bump
