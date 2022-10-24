tests
testAtPut
			
	|list|
	
	list := MyList fill: #('a' 'b' 'c' 'd' 'e').
	
	self 
	should: [ list at: -1 put: 'A' ]
	raise: Error.
	
	self 
	should: [ list at: 0 put: 'A']
	raise: Error.
	
	self 
	should: [ list at: 6 put: 'A' ]
	raise: Error.
	
	list at: 1 put: 'A'.
	list at: 3 put: 'C'.
	list at: 5 put: 'E'.
	
	self assert: list asString equals: '(A,b,C,d,E)'.
