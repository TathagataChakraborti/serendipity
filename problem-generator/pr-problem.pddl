(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK2_ROOM1 )
		( AT_MK1_ROOM1 )
		( AT_ROBOT_ROOM1 )
		( AT_COMMX_ROOM1 )
		( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
	)
	(:goal
		(and 
		( AT_COMMX_ROOM1 )
		( EXPLAINED_FULL_OBS_SEQUENCE )
		)
	)
	(:metric minimize (total-cost))

)
