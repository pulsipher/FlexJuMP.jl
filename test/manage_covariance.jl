# Check for expected base covariance
@test length(getcovariance(m)) == 0
@test length(getcovariance(m2)) == 0

# Test the get/set functions
setcovariance(m, eye(flex_data.numRVs))
@test all(getcovariance(m) .== eye(flex_data.numRVs))

# Check the safeguards and reset the covariance matrix
@test_throws ErrorException setcovariance(m, [1 1])
@test_throws ErrorException setcovariance(m, [1 2; 3 4])
@test_throws ErrorException setcovariance(m, [-2 0; 0 -3])
flex_data.covariance = Matrix(0, 0)
