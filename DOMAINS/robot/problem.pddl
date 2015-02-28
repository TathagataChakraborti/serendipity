(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK2_ROOM4 )
		( AT_MK1_ROOM2 )
		( AT_ROBOT_ROOM4 )
		( NOT_EXPLAINED_MOVE_REVERSE_ROBOT_HALL5_HALL4_1 )
		( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
	)
	(:goal
		(and 
		( AT_ROBOT_ROOM1 )
		( EXPLAINED_FULL_OBS_SEQUENCE )
		)
	)
	(:metric minimize (total-cost))

)
