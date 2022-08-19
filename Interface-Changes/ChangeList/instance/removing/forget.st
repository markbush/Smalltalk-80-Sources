forget
	changes _ changes select: [:c | (removed includes: c) not].
	removed _ Set new.
	self updateList
