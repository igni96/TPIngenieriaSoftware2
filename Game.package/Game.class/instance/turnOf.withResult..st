actions
turnOf: aPlayer withResult: anInteger 
	|numberOfPlayers|
(self hasEnded)
ifTrue: [ AssertionFailure signal:'El juego ya termino' ]
ifFalse: [ 
	((players at: turn) =aPlayer)
	ifTrue: [  
		dices do:[:each|
			(players at: turn) throws: each to:anInteger. 
			].
		(self hasEnded)
				ifTrue: [ (players at: turn)setPosition: (board numberOfSpaces)  ].
		numberOfPlayers:=players size.
		(turn+1>numberOfPlayers)
		ifTrue: [turn:=1.]
		ifFalse: [ turn:=turn+1. ]
		 ]
	ifFalse:[ AssertionFailure signal:'No es el turno de ese jugador'].
	]