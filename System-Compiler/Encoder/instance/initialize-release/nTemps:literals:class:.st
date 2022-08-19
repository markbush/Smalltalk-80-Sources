nTemps: n literals: lits class: cl
	"Decompile"

	class _ cl.
	nTemps _ n.
	literalStream _ ReadStream on: lits.
	literalStream position: lits size
