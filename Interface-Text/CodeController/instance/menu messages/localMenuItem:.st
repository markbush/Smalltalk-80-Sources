localMenuItem: selector
	^ (#(doIt printIt format explain) includes: selector) or:
		[super localMenuItem: selector]
