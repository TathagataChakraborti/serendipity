(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM11 )
		( AT_MK2_ROOM5 )
		( AT_COMMX_ROOM6 )
	)
	(:goal
		(and 
		CONDUCTED_TRIAGE_COMMX_ROOM13 )
		)
	)
	(:metric minimize (total-cost))

)