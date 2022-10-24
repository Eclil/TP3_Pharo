tests
testRemove
			
	|list|
	
	list := MyList fill: #('a' 'b' 'c' 'd' 'e').
	
	self 
	should: [ list removeAt: -1 ]
	raise: Error.
	
	self 
	should: [ list removeAt: 0 ]
	raise: Error.
	
	self 
	should: [ list removeAt: 6 ]
	raise: Error.
	
	list removeAt: 1.
	self assert: list asString equals: '(b,c,d,e)'.
	self assert: list size equals: 4.
	
	list removeAt: 4.
	self assert: list asString equals: '(b,c,d)'.
	self assert: list size equals: 3.
	
	list removeAt: 2.
	self assert: list asString equals: '(b,d)'.
	self assert: list size equals: 2.
	
	list removeAt: 2.
	list removeAt: 1.
	self assert: list asString equals: '()'.
	self assert: list size equals: 0.
	
	self
	should: [ list removeAt: 1 ]
	raise: Error.
