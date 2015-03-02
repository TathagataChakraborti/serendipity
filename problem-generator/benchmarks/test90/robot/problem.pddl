(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM1 )
		( AT_MK2_ROOM13 )
		( AT_ROBOT_ROOM13 )
	)
	(:goal
		(and 
		)
	)
	(:metric minimize (total-cost))

)
