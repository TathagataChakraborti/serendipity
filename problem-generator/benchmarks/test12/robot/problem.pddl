(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM2 )
		( AT_MK2_ROOM7 )
		( AT_ROBOT_HALL1 )
	)
	(:goal
		(and 
		)
	)
	(:metric minimize (total-cost))

)
