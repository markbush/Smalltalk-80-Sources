next: anInteger

	| newCollection howManyRead increment |

	newCollection _ collection species new: anInteger.

	howManyRead _ 0.
	[howManyRead < anInteger] whileTrue:
		[
		self atEnd ifTrue:
			[
			(howManyRead + 1) to: anInteger do: [:i | newCollection at: i put: (self next)].
			^newCollection
			].
		increment _ (readLimit - position) min: (anInteger - howManyRead).
		newCollection replaceFrom: (howManyRead + 1) to: (howManyRead _ howManyRead + increment) with: collection startingAt: (position + 1).
		position _ position + increment.
		].
	^newCollection
