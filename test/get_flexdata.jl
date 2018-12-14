# Extract the data
flex_data = getflexibilitydata(m)
flex_data2 = getflexibilitydata(m2)

# Check data type
@test isa(flex_data, FlexJuMP.FlexibilityData)
@test isa(flex_data2, FlexJuMP.FlexibilityData)

# Check F index extractor function
@test getflexibilityindex(m) == nothing
