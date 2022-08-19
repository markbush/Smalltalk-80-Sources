contractTo: charCount  "Shorten by ellipsis if too long"
	| half |
	self size > charCount ifTrue:
		[half _ charCount // 2.
		^ self copyReplaceFrom: half
				to: self size - (charCount-half) + 2
				with: '...']
	"
	'antidisestablishmentarianism' contractTo: 10 'anti...ism'
	"
