@data Connector begin
    Negation
    IntensionalSet
    ExtensionalSet
    List
end

@data MultipleConn <: Connector begin
    Conjunction
    Disjunction
    Product
    ParallelEvents
    SequentialEvents
    IntensionalIntersection
    ExtensionalIntersection
    ExtensionalDifference
    IntensionalDifference
    IntensionalImage
    ExtensionalImage
end

is_commutative(c::Connector) = @match c begin
    Conjunction ||
    Disjunction ||
    ParallelEvents ||
    IntensionalIntersection ||
    ExtensionalIntersection ||
    IntensionalSet ||
    ExtensionalSet => true
    _ => false
end 

is_single_only(c) = c == Negation
is_double_only(c) = c == ExtensionalDifference || c == IntensionalDifference
is_multiple_only(c) = c isa MultipleConn
is_temporal(c) = c in (ParallelEvents, SequentialEvents)
function chech_valied(c, len) 
    is_single_only(c) && return len == 1
    is_double_only(c) && return len == 2
    is_multiple_only(c) && return len > 1
    return len > 0
end
