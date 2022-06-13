@data Copula begin
    Inheritance
    Similarity
    Instance
    Property
    InstanceProperty
end

@data HighOrder <: Copula begin
    Implication
    PredictiveImplication
    ConcurrentImplication
    RetrospectiveImplication
    Equivalence
    PredictiveImplication
    ConcurrentEquivalence
end

is_commutative(c::Copula) = @match c begin
    Similarity || Equivalence || ConcurrentEquivalence => true
    _ => false
end

is_higher_order(c::Copula) = false
is_higher_order(c::HighOrder) = true

symmetrize(c::Copula) = @match c begin
    Inheritance => Similarity
    Implication => Equivalence
    ConcurrentImplication => ConcurrentEquivalence
    PredictiveImplication => PredictiveImplication
    _ => @error "Invalid case"
end

inverse(c::Copula) = @match c begin
    PredictiveImplication => RetrospectiveImplication
    RetrospectiveImplication => PredictiveImplication
    _ => c
end