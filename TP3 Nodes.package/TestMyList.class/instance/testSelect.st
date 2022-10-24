tests
testSelect

	|list result|
	list := MyList new.
	
	list add: 'a'.
	list add: 'b'.
	list add: 'a'.
	list add: 'a'.
	list add: 'a'.
	list add: 'c'.
	
	result := list select: [ :each | each = 'a' ].
	
	self assert: result asString equals: '(a,a,a,a)'. 