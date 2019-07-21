using JuMP, GLPK

function takumi_LP(; verbose = true)
    model = Model(with_optimizer(GLPK.Optimizer))

    @variable(model, 20 <= x <= 150, Int)
    @variable(model, 10 <= y <= 60, Int)

    @objective(model, Max, 8x + 17y)
    @constraint(model, 8x + 18y <= 1000)

    if verbose
        print(model)
    end

    JuMP.optimize!(model)

    obj_value = JuMP.objective_value(model)
    x_value = JuMP.value(x)
    y_value = JuMP.value(y)

    if verbose
        println("Objective value: ", obj_value)
        println("x = ", x_value)
        println("y = ", y_value)
    end

end

takumi_LP(verbose = true)