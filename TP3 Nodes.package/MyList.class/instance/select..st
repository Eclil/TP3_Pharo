accessing
select: block

	| result |
	result := MyList new.
	self do: [ :each |
		(block value: each)
			ifTrue: [ result add: each ] ].
		
	^ result
	
	