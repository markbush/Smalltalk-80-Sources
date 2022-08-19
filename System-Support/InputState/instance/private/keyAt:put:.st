keyAt: index put: value
	| mask |
	index < 8r200
	  ifTrue:  "Not a potential special character"
		[value ~= 0 ifTrue:
			[(index = $c asciiValue and: [ctrlState ~= 0])
				ifTrue: [lshiftState ~= 0
							ifTrue: [self forkEmergencyEvaluatorAt: Processor userInterruptPriority]
							ifFalse: [[ScheduledControllers interruptName: 'User Interrupt'] fork]]
				ifFalse: [^keyboardQueue nextPut:
								(KeyboardEvent code: index
												 meta: metaState)]]]
	  ifFalse:
		[index = CtrlKey
		  ifTrue: [ctrlState _ value bitShift: 1]
		  ifFalse:
			[index = LshiftKey
			  ifTrue: [lshiftState _ value]
			  ifFalse:
				[index = RshiftKey
				  ifTrue: [rshiftState _ value]
				  ifFalse:
					[index = LockKey
					  ifTrue: [lockState _ value bitShift: 2]
					  ifFalse:
						[(index >= BitMin and: [index <= BitMax])
						  ifTrue:
							[mask _ 1 bitShift: index - BitMin.
							value = 1
							  ifTrue: [bitState _ bitState bitOr: mask]
							  ifFalse: [bitState _ bitState bitAnd: -1 - mask]]
						  ifFalse:
							[value ~= 0 ifTrue:
								[keyboardQueue nextPut:
									(KeyboardEvent code: index meta: metaState)]]]]]].
		metaState _ (ctrlState bitOr: (lshiftState bitOr: rshiftState)) bitOr: lockState]
