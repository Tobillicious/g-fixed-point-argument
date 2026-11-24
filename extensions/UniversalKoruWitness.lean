/- Universal witness coverage of inhabited existence.
   This standalone formalisation does not establish physical protection,
   temporal persistence, or Byzantine protocol consensus. -/
namespace UniversalKoruWitness
universe u
variable (U : Type u)
def G : Prop := Nonempty U
def AbsoluteE : Prop := U → False

theorem every_koru_witnesses_G (p : U) : G U :=
  ⟨p⟩

theorem every_koru_refutes_E (p : U) : ¬ AbsoluteE U :=
  fun e => e p

theorem G_excludes_absolute_E : G U → ¬ AbsoluteE U := by
  intro ⟨p⟩ e
  exact e p

theorem G_regardless_of_recognition
    (Recognises : U → Prop) (p : U) :
    (Recognises p ∨ ¬ Recognises p) ∧ G U ∧ ¬ AbsoluteE U := by
  classical
  exact ⟨Classical.em (Recognises p), ⟨p⟩, fun e => e p⟩

-- No cardinality restriction on the witness type.
theorem universal_witness_coverage :
    ∀ p : U, G U ∧ ¬ AbsoluteE U :=
  fun p => ⟨⟨p⟩, fun e => e p⟩

-- Recognition changes need not change the underlying witness.
theorem recognition_independent
    (R S : U → Prop) (p : U) (h : ¬ R p ∧ S p) :
    G U ∧ ¬ AbsoluteE U :=
  universal_witness_coverage U p

end UniversalKoruWitness
