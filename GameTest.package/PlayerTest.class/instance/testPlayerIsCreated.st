tests
testPlayerIsCreated
|player|
player:= Player named: 'Miguel'.
self assert: player name equals: 'Miguel'.
self assert: player position equals: 0.