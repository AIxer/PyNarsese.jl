# @enum TermType ATOM STATEMENT COMPOUND
@data TermType begin
    ATOM
    STATEMENT
    COMPOUND
end

Base.@kwdef mutable struct Term
    type::TermType = ATOM
    copula::Maybe{Copula} = None
    connector::Maybe{Copula} = None
    complexity::Float16 = Float16(1.0)
    has_var::Bool = false
    has_ivar::Bool = false # Whether the term contains independent variable(s).
    has_dvar::Bool = false # Whether the term contains dependent variable(s).
    has_qvar::Bool = false # Whether the term contains query variable(s).
    is_var::Bool = false
    is_ivar::Bool = false
    is_dvar::Bool = false
    is_qvar::Bool = false
    is_closed::Bool = true
    is_interval::Bool = false
    is_operation::Bool = false
    _index_val = None
    word
    word_sorted
    components::Maybe{Set{Term}} = None
end

function Term(word, do_hashing=false, word_sorted=None, is_input=false)
    
end