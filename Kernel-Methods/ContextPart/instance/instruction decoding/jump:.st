jump: distance
	"Simulates the action of a 'unconditional jump' bytecode whose
	offset is the argument, distance."

	pc _ pc + distance
