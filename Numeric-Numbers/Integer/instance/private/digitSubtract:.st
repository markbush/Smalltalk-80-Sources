digitSubtract: arg
	| smaller larger i z sum sl al ng lastdigit |
	sl _ self digitLength.
	al _ arg digitLength.
	(sl = al
		ifTrue:
			[[(self digitAt: sl) = (arg digitAt: sl) and: [sl > 1]]
				whileTrue: [sl _ sl - 1].
			al _ sl.
			(self digitAt: sl) < (arg digitAt: sl)]
		ifFalse: [sl < al])
		ifTrue:
			[larger _ arg.
			smaller _ self.
			ng _ self negative == false.
			sl _ al]
		ifFalse:
			[larger _ self.
			smaller _ arg.
			ng _ self negative].
	sum _ Integer new: sl neg: ng.
	lastdigit _ 1.
	z _ 0.
	"Loop invariant is -1<=z<=1"
	i _ 1.
	[i <= sl]
		whileTrue:
			[z _ z + (larger digitAt: i) - (smaller digitAt: i).
			(sum digitAt: i put: (z bitAnd: 255)) ~= 0 ifTrue: [lastdigit _ i].
			z _ z bitShift: -8.
			i _ i + 1].
	lastdigit = sl ifFalse: [sum _ sum growto: lastdigit].
	^sum truncated
