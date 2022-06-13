
Budget() = Budget(0.9, 0.9, 0.5)

total(bgt) = bgt.durability * (bgt.priority + bgt.quality) / 2.0
above_threshold(bgt) = total(bgt) > Config.budget_thresh
quality_from_truth(truth) = (e = expectation(truth); max(e, (1-e)*0.75))
reduce_by_achieving_level(bgt, h) = bgt.priority *= 1 - h

function destribute(bgt, n)
    n = n > 0 ? n : 1
    Budget(bgt.priority / sqrt(n), bgt.durability, bgt.quality)
end