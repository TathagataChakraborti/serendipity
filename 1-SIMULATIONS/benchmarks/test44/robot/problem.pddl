(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM5 )
		( AT_MK2_ROOM9 )
		( AT_ROBOT_ROOM3 )
	)
	(:goal
		(and 
		)
	)
	(:metric minimize (total-cost))

)
