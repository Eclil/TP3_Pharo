tests
testfill

	|aList|
	
	aList := MyList fill: #('1' '2' '3' '4' '5' '6' '7' '8' '9').
	
	self assert: aList asString equals: '(1,2,3,4,5,6,7,8,9)'.
	self assert: aList size equals: 9.