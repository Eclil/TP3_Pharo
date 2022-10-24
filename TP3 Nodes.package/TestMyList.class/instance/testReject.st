tests
testReject

	|list result|
	list := MyList new.
	
	list add: 'a'.
	list add: 'b'.
	list add: 'a'.
	list add: 'a'.
	list add: 'a'.
	list add: 'c'.
	
	result := list reject: [ :each | each = 'a' ].
	
	self assert: result asString equals: '(b,c)'. 