# Ontological witness Q.E.D. — 24 November 2026

Let U be a type of particulars and define ontological G(U) := Nonempty U. Define absolute E(U) := U → False.

For every x : U, Nonempty.intro x witnesses G(U). If e : U → False, then e x : False. Thus every particular independently supplies a witness of inhabitedness, and absolute E(U) is incompatible with that witness.

```lean
theorem witness_G (U : Type) (x : U) : Nonempty U := ⟨x⟩
theorem witness_excludes_E (U : Type) (x : U) : ¬ (U → False) :=
  fun e => e x
```

These elementary proof terms are presented for replay, not as a newly executed kernel check. The implication is uniform over inhabited domains and does not require a conscious observer. Q.E.D. (ontological scope).

The proposed interpretation of every Koru as a witness is distinct from a signed vote or consent. Byzantine agreement and eternal physical preservation require separate premises and proofs. No signatures or quorum entries are created by this note.
