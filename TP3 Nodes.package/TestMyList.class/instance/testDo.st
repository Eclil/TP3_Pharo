tests
testDo

	|list sum|
	list := MyList new.
	
	sum := 0.
	
	list add: 3.
	list add: 5.
	list add: 8.
	
	list do: [ :each | sum := sum + each ].
	
	self assert: sum equals: 16. 