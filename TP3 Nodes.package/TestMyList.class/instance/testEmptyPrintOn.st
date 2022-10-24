tests
testEmptyPrintOn
	
	|list|
	list := MyList new.
	
	self assert: list asString equals: '()'.