tests
testAt
			
	|list|
	
	list := MyList fill: #('a' 'b' 'c' 'd' 'e').
	
	self 
	should: [ list at: -1 ]
	raise: Error.
	
	self 
	should: [ list at: 0 ]
	raise: Error.
	
	self 
	should: [ list at: 6 ]
	raise: Error.
	
	self assert: (list at: 1) equals: 'a'.
	self assert: (list at: 3) equals: 'c'.
	self assert: (list at: 5) equals: 'e'.