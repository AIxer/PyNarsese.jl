module PyNarsese

using MLStyle

const None = nothing
const Maybe{T} = Union{T, None}

include("types.jl")
include("budget.jl")
include("truth.jl")

include("copula.jl")
include("connector.jl")
include("term.jl")

end # module