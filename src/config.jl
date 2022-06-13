Base.@kwdef struct Parameters
    priority::Float16 =0.8
    durability::Float16 =0.8
    quality::Float16 =0.5
    num_buckets::Int  = 100
    max_duration::Int  = 10000
    f::Float16 =1.0
    c::Float16 =0.9
    c_judgement::Float16 =0.9
    c_goal::Float16 =0.9
    k::Int =1
    p_judgement::Float16 =0.8
    d_judgement::Float16 =0.5
    p_question::Float16 =0.9
    d_question::Float16 =0.9
    p_quest::Float16 =0.9
    d_quest::Float16 =0.9
    p_goal::Float16 =0.9
    d_goal::Float16 =0.9
    
    p_feedback::Float16  = 0.9
    d_feedback::Float16  = 0.5

    budget_thresh::Float16 =0.01

    nlevels_task_link::Int =10
    capacity_task_link::Int =100
    nlevels_term_link::Int =10
    capacity_term_link::Int =100
    capacity_table::Int =100

    quality_min::Float16 =0.3
    cycles_per_duration::Int =5
    n_forget_durations::Int =2
    cycles_forget::Int = cycles_per_duration*n_forget_durations

    revision_max_occurence_distance::Int =10

    truth_epsilon = 0.01
    budget_epsilon = 0.0001
    complexity_unit = 1.0
    

    variable_repr_normalized = false

    rate_discount_c = 0.5

    rate_discount_p_internal_exp = 0.1
    rate_discount_d_internal_exp = 0.1

    temporal_duration = 5
    n_sequence_attempts = 10
    n_op_condition_attempts = 10
end

const Config = Parameters()