(define
	(domain grounded-ACTION)
	(:requirements :strips :action-costs)
	(:predicates
		( HAS_MEDKIT_COMMX )
		( HAS_COMMX_MK1 )
		( HAS_COMMX_MK2 )
		( DELIVERED_COMMX_MK1_ROOM1 )
		( LOC_HAS_MEDKIT_ROOM1 )
		( DELIVERED_COMMX_MK2_ROOM1 )
		( CONDUCTED_TRIAGE_COMMX_ROOM1 )
		( AT_COMMX_HALL1 )
		( AT_COMMX_ROOM10 )
		( AT_COMMX_ROOM9 )
		( DELIVERED_COMMX_MK1_ROOM9 )
		( LOC_HAS_MEDKIT_ROOM9 )
		( AT_MK1_ROOM9 )
		( DELIVERED_COMMX_MK1_ROOM10 )
		( LOC_HAS_MEDKIT_ROOM10 )
		( AT_MK1_ROOM10 )
		( DELIVERED_COMMX_MK1_HALL1 )
		( LOC_HAS_MEDKIT_HALL1 )
		( AT_MK1_HALL1 )
		( DELIVERED_COMMX_MK2_ROOM9 )
		( AT_MK2_ROOM9 )
		( DELIVERED_COMMX_MK2_ROOM10 )
		( AT_MK2_ROOM10 )
		( DELIVERED_COMMX_MK2_HALL1 )
		( AT_MK2_HALL1 )
		( CONDUCTED_TRIAGE_COMMX_ROOM9 )
		( CONDUCTED_TRIAGE_COMMX_ROOM10 )
		( CONDUCTED_TRIAGE_COMMX_HALL1 )
		( AT_COMMX_HALL2 )
		( AT_COMMX_ROOM2 )
		( DELIVERED_COMMX_MK1_ROOM2 )
		( LOC_HAS_MEDKIT_ROOM2 )
		( AT_MK1_ROOM2 )
		( DELIVERED_COMMX_MK1_HALL2 )
		( LOC_HAS_MEDKIT_HALL2 )
		( AT_MK1_HALL2 )
		( DELIVERED_COMMX_MK2_ROOM2 )
		( AT_MK2_ROOM2 )
		( DELIVERED_COMMX_MK2_HALL2 )
		( AT_MK2_HALL2 )
		( CONDUCTED_TRIAGE_COMMX_ROOM2 )
		( CONDUCTED_TRIAGE_COMMX_HALL2 )
		( AT_COMMX_HALL3 )
		( DELIVERED_COMMX_MK1_HALL3 )
		( LOC_HAS_MEDKIT_HALL3 )
		( AT_MK1_HALL3 )
		( DELIVERED_COMMX_MK2_HALL3 )
		( AT_MK2_HALL3 )
		( CONDUCTED_TRIAGE_COMMX_HALL3 )
		( AT_COMMX_HALL4 )
		( AT_COMMX_ROOM11 )
		( AT_COMMX_ROOM4 )
		( AT_COMMX_ROOM3 )
		( DELIVERED_COMMX_MK1_ROOM3 )
		( LOC_HAS_MEDKIT_ROOM3 )
		( AT_MK1_ROOM3 )
		( DELIVERED_COMMX_MK1_ROOM4 )
		( LOC_HAS_MEDKIT_ROOM4 )
		( AT_MK1_ROOM4 )
		( DELIVERED_COMMX_MK1_ROOM11 )
		( LOC_HAS_MEDKIT_ROOM11 )
		( AT_MK1_ROOM11 )
		( DELIVERED_COMMX_MK1_HALL4 )
		( LOC_HAS_MEDKIT_HALL4 )
		( AT_MK1_HALL4 )
		( DELIVERED_COMMX_MK2_ROOM3 )
		( AT_MK2_ROOM3 )
		( DELIVERED_COMMX_MK2_ROOM4 )
		( AT_MK2_ROOM4 )
		( DELIVERED_COMMX_MK2_ROOM11 )
		( AT_MK2_ROOM11 )
		( DELIVERED_COMMX_MK2_HALL4 )
		( AT_MK2_HALL4 )
		( CONDUCTED_TRIAGE_COMMX_ROOM3 )
		( CONDUCTED_TRIAGE_COMMX_ROOM4 )
		( CONDUCTED_TRIAGE_COMMX_ROOM11 )
		( CONDUCTED_TRIAGE_COMMX_HALL4 )
		( AT_COMMX_HALL5 )
		( AT_COMMX_ROOM12 )
		( AT_COMMX_ROOM5 )
		( DELIVERED_COMMX_MK1_ROOM5 )
		( LOC_HAS_MEDKIT_ROOM5 )
		( AT_MK1_ROOM5 )
		( DELIVERED_COMMX_MK1_ROOM12 )
		( LOC_HAS_MEDKIT_ROOM12 )
		( AT_MK1_ROOM12 )
		( DELIVERED_COMMX_MK1_HALL5 )
		( LOC_HAS_MEDKIT_HALL5 )
		( AT_MK1_HALL5 )
		( DELIVERED_COMMX_MK2_ROOM5 )
		( AT_MK2_ROOM5 )
		( DELIVERED_COMMX_MK2_ROOM12 )
		( AT_MK2_ROOM12 )
		( DELIVERED_COMMX_MK2_HALL5 )
		( AT_MK2_HALL5 )
		( CONDUCTED_TRIAGE_COMMX_ROOM5 )
		( CONDUCTED_TRIAGE_COMMX_ROOM12 )
		( CONDUCTED_TRIAGE_COMMX_HALL5 )
		( AT_COMMX_HALL6 )
		( DELIVERED_COMMX_MK1_HALL6 )
		( LOC_HAS_MEDKIT_HALL6 )
		( AT_MK1_HALL6 )
		( DELIVERED_COMMX_MK2_HALL6 )
		( AT_MK2_HALL6 )
		( CONDUCTED_TRIAGE_COMMX_HALL6 )
		( AT_COMMX_HALL7 )
		( AT_COMMX_ROOM7 )
		( AT_COMMX_ROOM6 )
		( DELIVERED_COMMX_MK1_ROOM6 )
		( LOC_HAS_MEDKIT_ROOM6 )
		( AT_MK1_ROOM6 )
		( DELIVERED_COMMX_MK1_ROOM7 )
		( LOC_HAS_MEDKIT_ROOM7 )
		( AT_MK1_ROOM7 )
		( DELIVERED_COMMX_MK1_HALL7 )
		( LOC_HAS_MEDKIT_HALL7 )
		( AT_MK1_HALL7 )
		( DELIVERED_COMMX_MK2_ROOM6 )
		( AT_MK2_ROOM6 )
		( DELIVERED_COMMX_MK2_ROOM7 )
		( AT_MK2_ROOM7 )
		( DELIVERED_COMMX_MK2_HALL7 )
		( AT_MK2_HALL7 )
		( CONDUCTED_TRIAGE_COMMX_ROOM6 )
		( CONDUCTED_TRIAGE_COMMX_ROOM7 )
		( CONDUCTED_TRIAGE_COMMX_HALL7 )
		( AT_COMMX_HALL8 )
		( AT_COMMX_ROOM13 )
		( AT_COMMX_ROOM8 )
		( DELIVERED_COMMX_MK1_ROOM8 )
		( LOC_HAS_MEDKIT_ROOM8 )
		( AT_MK1_ROOM8 )
		( DELIVERED_COMMX_MK1_ROOM13 )
		( LOC_HAS_MEDKIT_ROOM13 )
		( AT_MK1_ROOM13 )
		( DELIVERED_COMMX_MK1_HALL8 )
		( LOC_HAS_MEDKIT_HALL8 )
		( AT_MK1_HALL8 )
		( DELIVERED_COMMX_MK2_ROOM8 )
		( AT_MK2_ROOM8 )
		( DELIVERED_COMMX_MK2_ROOM13 )
		( AT_MK2_ROOM13 )
		( DELIVERED_COMMX_MK2_HALL8 )
		( AT_MK2_HALL8 )
		( CONDUCTED_TRIAGE_COMMX_ROOM8 )
		( CONDUCTED_TRIAGE_COMMX_ROOM13 )
		( CONDUCTED_TRIAGE_COMMX_HALL8 )
		( AT_COMMX_ROOM1 )
		( AT_MK2_ROOM1 )
		( AT_MK1_ROOM1 )
	) 
	(:functions (total-cost))
	(:action PICK_UP_MEDKIT_COMMX_MK2_HALL8
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL8 )
			( AT_COMMX_HALL8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_HALL8 ))
			(not ( LOC_HAS_MEDKIT_HALL8 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM13
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM13 )
			( AT_COMMX_ROOM13 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM13 ))
			(not ( LOC_HAS_MEDKIT_ROOM13 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM8
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM8 )
			( AT_COMMX_ROOM8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM8 ))
			(not ( LOC_HAS_MEDKIT_ROOM8 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_HALL8
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL8 )
			( AT_COMMX_HALL8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_HALL8 ))
			(not ( LOC_HAS_MEDKIT_HALL8 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM13
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM13 )
			( AT_COMMX_ROOM13 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM13 ))
			(not ( LOC_HAS_MEDKIT_ROOM13 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM8
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM8 )
			( AT_COMMX_ROOM8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM8 ))
			(not ( LOC_HAS_MEDKIT_ROOM8 ))
		)
	)
	(:action MOVE_COMMX_ROOM8_HALL8
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL8 )
			(not ( AT_COMMX_ROOM8 ))
		)
	)
	(:action MOVE_COMMX_ROOM13_HALL8
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM13 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL8 )
			(not ( AT_COMMX_ROOM13 ))
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_HALL8
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_HALL8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_HALL8 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM13
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM13 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM13 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM8
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM8 )
		)
	)
	(:action DROP_OFF_COMMX_MK2_HALL8
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_HALL8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_HALL8 )
			( LOC_HAS_MEDKIT_HALL8 )
			( AT_MK2_HALL8 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM13
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM13 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM13 )
			( LOC_HAS_MEDKIT_ROOM13 )
			( AT_MK2_ROOM13 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM8
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM8 )
			( LOC_HAS_MEDKIT_ROOM8 )
			( AT_MK2_ROOM8 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_HALL8
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_HALL8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_HALL8 )
			( LOC_HAS_MEDKIT_HALL8 )
			( AT_MK1_HALL8 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM13
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM13 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM13 )
			( LOC_HAS_MEDKIT_ROOM13 )
			( AT_MK1_ROOM13 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM8
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM8 )
			( LOC_HAS_MEDKIT_ROOM8 )
			( AT_MK1_ROOM8 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_HALL7
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL7 )
			( AT_COMMX_HALL7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_HALL7 ))
			(not ( LOC_HAS_MEDKIT_HALL7 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM7
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM7 )
			( AT_COMMX_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM7 ))
			(not ( LOC_HAS_MEDKIT_ROOM7 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM6
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM6 )
			( AT_COMMX_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM6 ))
			(not ( LOC_HAS_MEDKIT_ROOM6 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_HALL7
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL7 )
			( AT_COMMX_HALL7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_HALL7 ))
			(not ( LOC_HAS_MEDKIT_HALL7 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM7
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM7 )
			( AT_COMMX_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM7 ))
			(not ( LOC_HAS_MEDKIT_ROOM7 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM6
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM6 )
			( AT_COMMX_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM6 ))
			(not ( LOC_HAS_MEDKIT_ROOM6 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL8_HALL7
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL7 )
			(not ( AT_COMMX_HALL8 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL8_ROOM8
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM8 )
			(not ( AT_COMMX_HALL8 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL8_ROOM13
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM13 )
			(not ( AT_COMMX_HALL8 ))
		)
	)
	(:action MOVE_COMMX_HALL7_HALL8
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL8 )
			(not ( AT_COMMX_HALL7 ))
		)
	)
	(:action MOVE_COMMX_ROOM6_ROOM7
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM7 )
			(not ( AT_COMMX_ROOM6 ))
		)
	)
	(:action MOVE_COMMX_ROOM7_HALL7
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL7 )
			(not ( AT_COMMX_ROOM7 ))
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_HALL7
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_HALL7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_HALL7 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM7
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM7 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM6
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM6 )
		)
	)
	(:action DROP_OFF_COMMX_MK2_HALL7
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_HALL7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_HALL7 )
			( LOC_HAS_MEDKIT_HALL7 )
			( AT_MK2_HALL7 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM7
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM7 )
			( LOC_HAS_MEDKIT_ROOM7 )
			( AT_MK2_ROOM7 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM6
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM6 )
			( LOC_HAS_MEDKIT_ROOM6 )
			( AT_MK2_ROOM6 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_HALL7
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_HALL7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_HALL7 )
			( LOC_HAS_MEDKIT_HALL7 )
			( AT_MK1_HALL7 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM7
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM7 )
			( LOC_HAS_MEDKIT_ROOM7 )
			( AT_MK1_ROOM7 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM6
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM6 )
			( LOC_HAS_MEDKIT_ROOM6 )
			( AT_MK1_ROOM6 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_HALL6
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL6 )
			( AT_COMMX_HALL6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_HALL6 ))
			(not ( LOC_HAS_MEDKIT_HALL6 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_HALL6
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL6 )
			( AT_COMMX_HALL6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_HALL6 ))
			(not ( LOC_HAS_MEDKIT_HALL6 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL7_HALL6
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL6 )
			(not ( AT_COMMX_HALL7 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_ROOM7_ROOM6
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM6 )
			(not ( AT_COMMX_ROOM7 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL7_ROOM7
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM7 )
			(not ( AT_COMMX_HALL7 ))
		)
	)
	(:action MOVE_COMMX_HALL6_HALL7
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL7 )
			(not ( AT_COMMX_HALL6 ))
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_HALL6
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_HALL6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_HALL6 )
		)
	)
	(:action DROP_OFF_COMMX_MK2_HALL6
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_HALL6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_HALL6 )
			( LOC_HAS_MEDKIT_HALL6 )
			( AT_MK2_HALL6 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_HALL6
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_HALL6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_HALL6 )
			( LOC_HAS_MEDKIT_HALL6 )
			( AT_MK1_HALL6 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_HALL5
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL5 )
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_HALL5 ))
			(not ( LOC_HAS_MEDKIT_HALL5 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM12
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM12 )
			( AT_COMMX_ROOM12 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM12 ))
			(not ( LOC_HAS_MEDKIT_ROOM12 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM5
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM5 )
			( AT_COMMX_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM5 ))
			(not ( LOC_HAS_MEDKIT_ROOM5 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_HALL5
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL5 )
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_HALL5 ))
			(not ( LOC_HAS_MEDKIT_HALL5 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM12
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM12 )
			( AT_COMMX_ROOM12 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM12 ))
			(not ( LOC_HAS_MEDKIT_ROOM12 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM5
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM5 )
			( AT_COMMX_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM5 ))
			(not ( LOC_HAS_MEDKIT_ROOM5 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL6_HALL5
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL5 )
			(not ( AT_COMMX_HALL6 ))
		)
	)
	(:action MOVE_COMMX_HALL5_HALL6
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL6 )
			(not ( AT_COMMX_HALL5 ))
		)
	)
	(:action MOVE_COMMX_ROOM5_HALL5
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL5 )
			(not ( AT_COMMX_ROOM5 ))
		)
	)
	(:action MOVE_COMMX_ROOM12_HALL5
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM12 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL5 )
			(not ( AT_COMMX_ROOM12 ))
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_HALL5
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_HALL5 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM12
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM12 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM12 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM5
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM5 )
		)
	)
	(:action DROP_OFF_COMMX_MK2_HALL5
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_HALL5 )
			( LOC_HAS_MEDKIT_HALL5 )
			( AT_MK2_HALL5 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM12
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM12 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM12 )
			( LOC_HAS_MEDKIT_ROOM12 )
			( AT_MK2_ROOM12 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM5
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM5 )
			( LOC_HAS_MEDKIT_ROOM5 )
			( AT_MK2_ROOM5 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_HALL5
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_HALL5 )
			( LOC_HAS_MEDKIT_HALL5 )
			( AT_MK1_HALL5 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM12
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM12 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM12 )
			( LOC_HAS_MEDKIT_ROOM12 )
			( AT_MK1_ROOM12 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM5
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM5 )
			( LOC_HAS_MEDKIT_ROOM5 )
			( AT_MK1_ROOM5 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_HALL4
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL4 )
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_HALL4 ))
			(not ( LOC_HAS_MEDKIT_HALL4 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM11
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM11 )
			( AT_COMMX_ROOM11 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM11 ))
			(not ( LOC_HAS_MEDKIT_ROOM11 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM4
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM4 )
			( AT_COMMX_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM4 ))
			(not ( LOC_HAS_MEDKIT_ROOM4 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM3
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM3 )
			( AT_COMMX_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM3 ))
			(not ( LOC_HAS_MEDKIT_ROOM3 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_HALL4
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL4 )
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_HALL4 ))
			(not ( LOC_HAS_MEDKIT_HALL4 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM11
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM11 )
			( AT_COMMX_ROOM11 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM11 ))
			(not ( LOC_HAS_MEDKIT_ROOM11 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM4
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM4 )
			( AT_COMMX_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM4 ))
			(not ( LOC_HAS_MEDKIT_ROOM4 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM3
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM3 )
			( AT_COMMX_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM3 ))
			(not ( LOC_HAS_MEDKIT_ROOM3 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL5_HALL4
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL4 )
			(not ( AT_COMMX_HALL5 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL5_ROOM5
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM5 )
			(not ( AT_COMMX_HALL5 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL5_ROOM12
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM12 )
			(not ( AT_COMMX_HALL5 ))
		)
	)
	(:action MOVE_COMMX_HALL4_HALL5
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL5 )
			(not ( AT_COMMX_HALL4 ))
		)
	)
	(:action MOVE_COMMX_ROOM3_ROOM4
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM4 )
			(not ( AT_COMMX_ROOM3 ))
		)
	)
	(:action MOVE_COMMX_ROOM4_HALL4
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL4 )
			(not ( AT_COMMX_ROOM4 ))
		)
	)
	(:action MOVE_COMMX_ROOM11_HALL4
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM11 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL4 )
			(not ( AT_COMMX_ROOM11 ))
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_HALL4
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_HALL4 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM11
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM11 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM11 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM4
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM4 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM3
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM3 )
		)
	)
	(:action DROP_OFF_COMMX_MK2_HALL4
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_HALL4 )
			( LOC_HAS_MEDKIT_HALL4 )
			( AT_MK2_HALL4 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM11
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM11 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM11 )
			( LOC_HAS_MEDKIT_ROOM11 )
			( AT_MK2_ROOM11 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM4
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM4 )
			( LOC_HAS_MEDKIT_ROOM4 )
			( AT_MK2_ROOM4 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM3
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM3 )
			( LOC_HAS_MEDKIT_ROOM3 )
			( AT_MK2_ROOM3 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_HALL4
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_HALL4 )
			( LOC_HAS_MEDKIT_HALL4 )
			( AT_MK1_HALL4 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM11
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM11 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM11 )
			( LOC_HAS_MEDKIT_ROOM11 )
			( AT_MK1_ROOM11 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM4
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM4 )
			( LOC_HAS_MEDKIT_ROOM4 )
			( AT_MK1_ROOM4 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM3
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM3 )
			( LOC_HAS_MEDKIT_ROOM3 )
			( AT_MK1_ROOM3 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_HALL3
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL3 )
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_HALL3 ))
			(not ( LOC_HAS_MEDKIT_HALL3 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_HALL3
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL3 )
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_HALL3 ))
			(not ( LOC_HAS_MEDKIT_HALL3 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL4_HALL3
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL3 )
			(not ( AT_COMMX_HALL4 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_ROOM4_ROOM3
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM3 )
			(not ( AT_COMMX_ROOM4 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL4_ROOM4
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM4 )
			(not ( AT_COMMX_HALL4 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL4_ROOM11
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM11 )
			(not ( AT_COMMX_HALL4 ))
		)
	)
	(:action MOVE_COMMX_HALL3_HALL4
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL4 )
			(not ( AT_COMMX_HALL3 ))
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_HALL3
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_HALL3 )
		)
	)
	(:action DROP_OFF_COMMX_MK2_HALL3
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_HALL3 )
			( LOC_HAS_MEDKIT_HALL3 )
			( AT_MK2_HALL3 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_HALL3
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_HALL3 )
			( LOC_HAS_MEDKIT_HALL3 )
			( AT_MK1_HALL3 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_HALL2
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL2 )
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_HALL2 ))
			(not ( LOC_HAS_MEDKIT_HALL2 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM2
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM2 )
			( AT_COMMX_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM2 ))
			(not ( LOC_HAS_MEDKIT_ROOM2 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_HALL2
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL2 )
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_HALL2 ))
			(not ( LOC_HAS_MEDKIT_HALL2 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM2
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM2 )
			( AT_COMMX_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM2 ))
			(not ( LOC_HAS_MEDKIT_ROOM2 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL3_HALL2
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL2 )
			(not ( AT_COMMX_HALL3 ))
		)
	)
	(:action MOVE_COMMX_HALL2_HALL3
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL3 )
			(not ( AT_COMMX_HALL2 ))
		)
	)
	(:action MOVE_COMMX_ROOM2_HALL2
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL2 )
			(not ( AT_COMMX_ROOM2 ))
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_HALL2
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_HALL2 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM2
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM2 )
		)
	)
	(:action DROP_OFF_COMMX_MK2_HALL2
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_HALL2 )
			( LOC_HAS_MEDKIT_HALL2 )
			( AT_MK2_HALL2 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM2
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM2 )
			( LOC_HAS_MEDKIT_ROOM2 )
			( AT_MK2_ROOM2 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_HALL2
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_HALL2 )
			( LOC_HAS_MEDKIT_HALL2 )
			( AT_MK1_HALL2 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM2
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM2 )
			( LOC_HAS_MEDKIT_ROOM2 )
			( AT_MK1_ROOM2 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_HALL1
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL1 )
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_HALL1 ))
			(not ( LOC_HAS_MEDKIT_HALL1 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM10
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM10 )
			( AT_COMMX_ROOM10 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM10 ))
			(not ( LOC_HAS_MEDKIT_ROOM10 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM9
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM9 )
			( AT_COMMX_ROOM9 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM9 ))
			(not ( LOC_HAS_MEDKIT_ROOM9 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_HALL1
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL1 )
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_HALL1 ))
			(not ( LOC_HAS_MEDKIT_HALL1 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM10
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM10 )
			( AT_COMMX_ROOM10 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM10 ))
			(not ( LOC_HAS_MEDKIT_ROOM10 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM9
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM9 )
			( AT_COMMX_ROOM9 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM9 ))
			(not ( LOC_HAS_MEDKIT_ROOM9 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL2_HALL1
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL1 )
			(not ( AT_COMMX_HALL2 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL2_ROOM2
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM2 )
			(not ( AT_COMMX_HALL2 ))
		)
	)
	(:action MOVE_COMMX_HALL1_HALL2
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL2 )
			(not ( AT_COMMX_HALL1 ))
		)
	)
	(:action MOVE_COMMX_ROOM9_HALL1
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM9 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL1 )
			(not ( AT_COMMX_ROOM9 ))
		)
	)
	(:action MOVE_COMMX_ROOM10_HALL1
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM10 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL1 )
			(not ( AT_COMMX_ROOM10 ))
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_HALL1
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_HALL1 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM10
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM10 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM10 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM9
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM9 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM9 )
		)
	)
	(:action DROP_OFF_COMMX_MK2_HALL1
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_HALL1 )
			( LOC_HAS_MEDKIT_HALL1 )
			( AT_MK2_HALL1 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM10
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM10 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM10 )
			( LOC_HAS_MEDKIT_ROOM10 )
			( AT_MK2_ROOM10 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM9
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM9 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM9 )
			( LOC_HAS_MEDKIT_ROOM9 )
			( AT_MK2_ROOM9 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_HALL1
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_HALL1 )
			( LOC_HAS_MEDKIT_HALL1 )
			( AT_MK1_HALL1 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM10
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM10 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM10 )
			( LOC_HAS_MEDKIT_ROOM10 )
			( AT_MK1_ROOM10 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM9
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM9 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM9 )
			( LOC_HAS_MEDKIT_ROOM9 )
			( AT_MK1_ROOM9 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL1_ROOM1
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM1 )
			(not ( AT_COMMX_HALL1 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL1_ROOM9
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM9 )
			(not ( AT_COMMX_HALL1 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL1_ROOM10
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM10 )
			(not ( AT_COMMX_HALL1 ))
		)
	)
	(:action MOVE_COMMX_ROOM1_HALL1
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL1 )
			(not ( AT_COMMX_ROOM1 ))
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM1
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM1 )
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM1
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM1 )
			( LOC_HAS_MEDKIT_ROOM1 )
			( AT_MK2_ROOM1 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM1
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM1 )
			( LOC_HAS_MEDKIT_ROOM1 )
			( AT_MK1_ROOM1 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM1
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM1 )
			( AT_COMMX_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM1 ))
			(not ( LOC_HAS_MEDKIT_ROOM1 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM1
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM1 )
			( AT_COMMX_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM1 ))
			(not ( LOC_HAS_MEDKIT_ROOM1 ))
		)
	)

)
