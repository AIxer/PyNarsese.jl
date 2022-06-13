mutable struct Budget
    priority::Float16
    durability::Float16
    quality::Float16
end

mutable struct Truth
    f::Float16
    c::Float16
    k::Float16
end

mutable struct Item
    budget::Budget
    hash_value::UInt
end