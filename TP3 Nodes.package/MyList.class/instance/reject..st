accessing
reject: block

	| result |
	result := MyList new.
	self do: [ :each |
		(block value: each)
			ifFalse: [ result add: each ] ].
		
	^ result
	
	