tests
testSinglePrintOn
	
	|list|
	list := MyList new.
	
	list add: 'test'.
	
	self assert: list asString equals: '(test)'.