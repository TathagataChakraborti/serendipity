(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM13 )
		( AT_MK2_ROOM11 )
		( AT_ROBOT_HALL2 )
	)
	(:goal
		(and 
		)
	)
	(:metric minimize (total-cost))

)
