tests
testPrintOn
	
	|list|
	list := MyList fill: #('the' 'test' 'has' 'passed').
	
	self assert: list asString equals: '(the,test,has,passed)'.