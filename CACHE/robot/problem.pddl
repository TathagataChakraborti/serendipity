(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK2_ROOM3 )
		( AT_MK1_ROOM8 )
		( AT_ROBOT_ROOM4 )
	)
	(:goal
		(and 
		( AT_ROBOT_ROOM4 )
		)
	)
	(:metric minimize (total-cost))

)