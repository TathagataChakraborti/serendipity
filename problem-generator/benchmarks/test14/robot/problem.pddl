(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM6 )
		( AT_MK2_ROOM2 )
		( AT_ROBOT_ROOM9 )
	)
	(:goal
		(and 
		)
	)
	(:metric minimize (total-cost))

)
