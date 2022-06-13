module PyNarsese

using MLStyle

const None = nothing
const Maybe{T} = Union{T, Nothing}

include("config.jl")
include("budget.jl")
include("truth.jl")
include("item.jl")

include("copula.jl")
include("connector.jl")
include("term.jl")

end # module