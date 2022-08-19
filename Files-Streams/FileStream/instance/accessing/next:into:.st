next: anInteger into: aCollection
	"Copy the next anInteger bytes from the receiver into aCollection."

	| howManyRead increment |

	howManyRead _ 0.
	[howManyRead < anInteger] whileTrue:
		[
		self atEnd ifTrue:
			[
			(howManyRead + 1) to: anInteger do: [:i | aCollection at: i put: (self next)].
			^aCollection
			].
		increment _ (readLimit - position) min: (anInteger - howManyRead).
		aCollection replaceFrom: (howManyRead + 1) to: (howManyRead _ howManyRead + increment) with: collection startingAt: (position + 1).
		position _ position + increment.
		].
	^aCollection
