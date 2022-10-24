tests
testCollect

	|list result|
	list := MyList new.

	list add: 3.
	list add: 5.
	list add: 8.
	
	result := list collect: [ :each | each*2 ].
	
	self assert: result asString equals: '(6,10,16)'. 