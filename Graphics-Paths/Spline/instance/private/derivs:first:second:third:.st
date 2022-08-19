derivs: values first: first second: second third: third
	"Computes the first, second and third derivitives at each point in the array values."

	| size v b |
	size _ values size.
	size > 2 ifTrue:
		[v _ Array new: size.
		v at: 1 put: 4.0.
		b _ Array new: size.
		b at: 1 put: 6.0*(values first-((values at: 2)*2.0)+(values at: 3)).
		2 to: size-2 do:
			[:i |
			v at: i put: 4.0-(1.0/(v at: i-1)).
			b at: i put: 6.0*((values at: i)-((values at: i+1)*2.0)
				+(values at: i+2))-((b at: i-1)/(v at: i-1))].
		second at: size-1 put: (b at: size-2)/(v at: size-2).
		size-2 to: 2 by: -1 do:
			[:i |
			second at: i put: (b at: i-1)-(second at: i+1)/(v at: i-1)]].

	second at: 1 put: 0.0 asPoint.
	second at: size put: 0.0 asPoint.

	1 to: size-1 do:
		[:i |
		first at: i put: (values at: i+1)-(values at: i)-((second at: i)*2.0
			+(second at: i+1)/6.0).
		third at: i put: (second at: i+1)-(second at: i)].
