accesing
placeOfWhenGameHasEnded:aPlayer
	players sort: [:player1 :player2 | player1 position >=player2 position].
		players doWithIndex: [ :each :i|
			(each = aPlayer)
			ifTrue: [ ^i. ]
			
			 ].
		AssertionFailure signal: 'No existe el jugador'.