tests
testDetect

	|list result|
	list := MyList new.
	
	list add: 7.
	list add: 13.
	list add: 8.
	list add: 5.
	list add: 3.
	list add: 19.
	
	result := list detect: [ :each | each < 6 ].
	
	self assert: result equals: 5. 