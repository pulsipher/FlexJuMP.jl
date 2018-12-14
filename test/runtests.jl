using FlexJuMP
@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

using FlexJuMP
using Base.Test
using Pavito, GLPKMathProgInterface, Ipopt
using JuMP

# Run basic model definition tests
tic()
@testset "Model Definition Testing" begin
    @test include("initialize_model.jl")
    @test include("set_single_variables.jl")
    @test include("set_vector_variables.jl")
    @test include("define_constraints.jl")
    @test include("define_real_model.jl")
end
toc()
print("\n")

# Check basic data manipulation functions
tic()
@testset "Data Access Testing" begin
    @testset "Data Extraction" begin include("get_flexdata.jl") end
    @testset "Get/Set Covariance Matrix" begin include("manage_covariance.jl") end
    @testset "Get/Set Mean" begin include("manage_mean.jl") end
end
toc()
print("\n")

# Check functions that can be used before solving the model
tic()
@testset "Pre-Solve Method Testing" begin
    @testset "Set Uncertainty Set" begin include("define_uncertainty_set.jl") end
    @testset "Check Mean" begin include("check_mean.jl") end
    @testset "Find Centered Mean" begin include("find_center.jl") end
    @testset "SF Index" begin include("sf_index.jl") end
end
toc()
print("\n")

# Extensively test the solvehook
tic()
@testset "Solvehook Testing" begin include("solvehook_checks.jl") end
toc()
print("\n")

# Test function that can be called after the solution of the solvehook
tic()
@testset "Post-Solve Method Testing" begin
    @testset "Confidence Level" begin include("confidence_level.jl") end
    @testset "Critical Point" begin include("retrieve_critical_pt.jl") end
    @testset "Rank Constraints" begin include("constraint_ranker.jl") end
    @testset "SF Index" begin include("sf_index2.jl") end
end
toc()