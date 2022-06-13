mutable struct Truth
    f::Float16
    c::Float16
    k::Float16
end

e(t::Truth) = t.c * (t.f - 0.5) + 0.5
const truth_analytic = Truth(Config.f, Config.c, Config.k)