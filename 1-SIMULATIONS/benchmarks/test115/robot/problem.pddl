(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM4 )
		( AT_MK2_ROOM3 )
		( AT_ROBOT_HALL2 )
	)
	(:goal
		(and 
		)
	)
	(:metric minimize (total-cost))

)
