example
	"Draws a spiral in gray with a pen that is 4 pixels wide."

	| bic |
	bic _ Pen new.
	bic mask: Form gray.
	bic defaultNib: 4.
	bic combinationRule: Form under.
	1 to: 50 do: [:i | bic go: i*4. bic turn: 89]
	"Pen example"
