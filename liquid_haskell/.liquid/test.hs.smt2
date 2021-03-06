(set-option :auto-config false)
(set-option :model true)
(set-option :model.partial false)
(set-option :smt.mbqi false)
(define-sort Elt () Int)
(define-sort Set () (Array Elt Bool))
(define-fun smt_set_emp () Set ((as const Set) false))
(define-fun smt_set_mem ((x Elt) (s Set)) Bool (select s x))
(define-fun smt_set_add ((s Set) (x Elt)) Set (store s x true))
(define-fun smt_set_cup ((s1 Set) (s2 Set)) Set ((_ map or) s1 s2))
(define-fun smt_set_cap ((s1 Set) (s2 Set)) Set ((_ map and) s1 s2))
(define-fun smt_set_com ((s Set)) Set ((_ map not) s))
(define-fun smt_set_dif ((s1 Set) (s2 Set)) Set (smt_set_cap s1 (smt_set_com s2)))
(define-fun smt_set_sub ((s1 Set) (s2 Set)) Bool (= smt_set_emp (smt_set_dif s1 s2)))
(define-sort Map () (Array Elt Elt))
(define-fun smt_map_sel ((m Map) (k Elt)) Elt (select m k))
(define-fun smt_map_sto ((m Map) (k Elt) (v Elt)) Map (store m k v))
(define-fun Z3_OP_MUL ((x Int) (y Int)) Int (* x y))
(define-fun Z3_OP_DIV ((x Int) (y Int)) Int (div x y))
(declare-fun int_apply_$35$$35$3 (Int Int Int Int) Int)
(declare-fun bool_apply_$35$$35$6 (Int Int Int Int Int Int Int) Bool)
(declare-fun map_apply_$35$$35$4 (Int Int Int Int Int) Map)
(declare-fun real_apply_$35$$35$2 (Int Int Int) Real)
(declare-fun set_apply_$35$$35$1 (Int Int) Set)
(declare-fun set_to_int (Set) Int)
(declare-fun bitvec_apply$35$$35$6 (Int Int Int Int Int Int Int) (_ BitVec 32))
(declare-fun int_apply_$35$$35$5 (Int Int Int Int Int Int) Int)
(declare-fun map_apply_$35$$35$2 (Int Int Int) Map)
(declare-fun real_apply_$35$$35$4 (Int Int Int Int Int) Real)
(declare-fun int_apply_$35$$35$2 (Int Int Int) Int)
(declare-fun bitvec_apply$35$$35$1 (Int Int) (_ BitVec 32))
(declare-fun bool_apply_$35$$35$7 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun map_apply_$35$$35$5 (Int Int Int Int Int Int) Map)
(declare-fun real_apply_$35$$35$3 (Int Int Int Int) Real)
(declare-fun set_apply_$35$$35$6 (Int Int Int Int Int Int Int) Set)
(declare-fun bitvec_apply$35$$35$7 (Int Int Int Int Int Int Int Int) (_ BitVec 32))
(declare-fun int_apply_$35$$35$4 (Int Int Int Int Int) Int)
(declare-fun bool_apply_$35$$35$1 (Int Int) Bool)
(declare-fun map_apply_$35$$35$3 (Int Int Int Int) Map)
(declare-fun real_apply_$35$$35$5 (Int Int Int Int Int Int) Real)
(declare-fun bitvec_apply$35$$35$2 (Int Int Int) (_ BitVec 32))
(declare-fun int_apply_$35$$35$1 (Int Int) Int)
(declare-fun bool_apply_$35$$35$4 (Int Int Int Int Int) Bool)
(declare-fun map_apply_$35$$35$6 (Int Int Int Int Int Int Int) Map)
(declare-fun set_apply_$35$$35$7 (Int Int Int Int Int Int Int Int) Set)
(declare-fun map_to_int (Map) Int)
(declare-fun set_apply_$35$$35$2 (Int Int Int) Set)
(declare-fun real_apply_$35$$35$1 (Int Int) Real)
(declare-fun bitvec_to_int ((_ BitVec 32)) Int)
(declare-fun bitvec_apply$35$$35$3 (Int Int Int Int) (_ BitVec 32))
(declare-fun bool_apply_$35$$35$5 (Int Int Int Int Int Int) Bool)
(declare-fun map_apply_$35$$35$7 (Int Int Int Int Int Int Int Int) Map)
(declare-fun set_apply_$35$$35$4 (Int Int Int Int Int) Set)
(declare-fun real_to_int (Real) Int)
(declare-fun set_apply_$35$$35$3 (Int Int Int Int) Set)
(declare-fun int_apply_$35$$35$7 (Int Int Int Int Int Int Int Int) Int)
(declare-fun bitvec_apply$35$$35$4 (Int Int Int Int Int) (_ BitVec 32))
(declare-fun bool_apply_$35$$35$2 (Int Int Int) Bool)
(declare-fun real_apply_$35$$35$6 (Int Int Int Int Int Int Int) Real)
(declare-fun set_apply_$35$$35$5 (Int Int Int Int Int Int) Set)
(declare-fun bool_to_int (Bool) Int)
(declare-fun bool_apply_$35$$35$3 (Int Int Int Int) Bool)
(declare-fun map_apply_$35$$35$1 (Int Int) Map)
(declare-fun real_apply_$35$$35$7 (Int Int Int Int Int Int Int Int) Real)
(declare-fun int_apply_$35$$35$6 (Int Int Int Int Int Int Int) Int)
(declare-fun bitvec_apply$35$$35$5 (Int Int Int Int Int Int) (_ BitVec 32))
(declare-fun runFun () Int)
(declare-fun addrLen () Int)
(declare-fun papp5 () Int)
(declare-fun xsListSelector () Int)
(declare-fun x_Tuple21 () Int)
(declare-fun x_Tuple65 () Int)
(declare-fun VV$35$$35$F$35$$35$1 () Int)
(declare-fun x_Tuple55 () Int)
(declare-fun Evens.notEven$35$$35$rjG () Int)
(declare-fun x_Tuple33 () Int)
(declare-fun x_Tuple77 () Int)
(declare-fun papp3 () Int)
(declare-fun x_Tuple63 () Int)
(declare-fun x_Tuple41 () Int)
(declare-fun GHC.Types.LT$35$$35$6S () Int)
(declare-fun papp4 () Int)
(declare-fun x_Tuple64 () Int)
(declare-fun GHC.Types.GT$35$$35$6W () Int)
(declare-fun autolen () Int)
(declare-fun GHC.Types.I$35$$35$$35$6c () Int)
(declare-fun x_Tuple52 () Int)
(declare-fun null () Int)
(declare-fun papp2 () Int)
(declare-fun x_Tuple62 () Int)
(declare-fun fromJust () Int)
(declare-fun papp7 () Int)
(declare-fun VV$35$$35$24 () Int)
(declare-fun x_Tuple53 () Int)
(declare-fun x_Tuple71 () Int)
(declare-fun x_Tuple74 () Int)
(declare-fun len () Int)
(declare-fun papp6 () Int)
(declare-fun x_Tuple22 () Int)
(declare-fun x_Tuple66 () Int)
(declare-fun x_Tuple44 () Int)
(declare-fun xListSelector () Int)
(declare-fun strLen () Int)
(declare-fun x_Tuple72 () Int)
(declare-fun isJust () Int)
(declare-fun Prop () Int)
(declare-fun x_Tuple31 () Int)
(declare-fun x_Tuple75 () Int)
(declare-fun VV$35$$35$22 () Int)
(declare-fun papp1 () Int)
(declare-fun x_Tuple61 () Int)
(declare-fun x_Tuple43 () Int)
(declare-fun GHC.Types.EQ$35$$35$6U () Int)
(declare-fun x_Tuple51 () Int)
(declare-fun x_Tuple73 () Int)
(declare-fun x_Tuple54 () Int)
(declare-fun x_Tuple32 () Int)
(declare-fun cmp () Int)
(declare-fun x_Tuple76 () Int)
(declare-fun fst () Int)
(declare-fun snd () Int)
(declare-fun x_Tuple42 () Int)

(assert (distinct GHC.Types.EQ$35$$35$6U GHC.Types.GT$35$$35$6W GHC.Types.LT$35$$35$6S))
(push 1)
(assert (and (= VV$35$$35$F$35$$35$1 8)))
(push 1)
(assert (not (= (mod VV$35$$35$F$35$$35$1 2) 1)))
(check-sat)
; SMT Says: Sat
(pop 1)
(pop 1)
(exit)
