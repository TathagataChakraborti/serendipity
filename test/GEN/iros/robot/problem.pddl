(define (problem hallway1) (:domain ACTION)
(:objects
	robot - agent
	room1 room2 room3 room4 room5 room6 room7 room8 room9 room10 room11 room12 room13 hall1 hall2 hall3 hall4 hall5 hall6 hall7 hall8 - location
	bxl - box
	mk1 mk2 - medkit
)

(:init
	(at robot room1)                                                             
	(at mk1 room1)
	(at mk2 room1)
	(connected room1 hall1)
	(connected hall1 hall2)
	(connected hall2 hall3)
	(connected hall3 hall4)
	(connected hall4 hall5)
	(connected hall5 hall6)
	(connected hall6 hall7)
	(connected hall7 hall8)
	(connected room2 hall2)
	(connected room3 room4)
	(connected room4 hall4)
	(connected room5 hall5)
	(connected room6 room7)
	(connected room7 hall7)
	(connected room8 hall8)
	(connected room9 hall1)
	(connected room10 hall1)
	(connected room11 hall4)
	(connected room12 hall5)
	(connected room13 hall8)
)

(:goal (and  
	(at robot room1)                                                             
))

)

