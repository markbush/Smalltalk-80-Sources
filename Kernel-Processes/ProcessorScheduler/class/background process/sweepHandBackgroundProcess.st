sweepHandBackgroundProcess
	"Install the default background process which shows a sweeping circle
	of Xor-ed bits on the screen."

	| sweepHand |
	sweepHand _ Pen new.
	sweepHand defaultNib: 2.
	sweepHand combinationRule: 6.
	self background:
		[[true]
			whileTrue: [2 timesRepeat:
							[sweepHand north.
							36 timesRepeat:
								[sweepHand place: Display boundingBox topRight + (-25@25).
								sweepHand go: 20.
								sweepHand turn: 10]]]]
