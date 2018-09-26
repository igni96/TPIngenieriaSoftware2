as yet unclassified
turnOfWhenGameIsBeingPlayed: aPlayer
|numberOfPlayers|
	(players at: turn) = aPlayer
				ifTrue: [ "Si le toca a ese jugador"
					dices
						do:
							[ :each | (players at: turn) throws: each	"El jugador del turno tira cada dado" ].
					self hasEnded
						ifTrue: [ 	(players at: turn) setPosition: numberOfTiles ].	"Si se paso del maximo su posción final es la última del tablero"
					numberOfPlayers := players size.	"Tamaño del arreglo de jugadores"
					turn + 1 > numberOfPlayers
						ifTrue: [ turn := 1 ]
						ifFalse: [ turn := turn + 1 ]	"Para que si ya tiraron todos vuelva a empezar" ]
				ifFalse: [ AssertionFailure signal: 'No es el turno de ese jugador' ]	"Revisa que el jugador que mandan es al que le toca"