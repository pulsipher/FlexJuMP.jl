# Test the get/set mean functions
@test all(getmean(m) .== means)
setmean(m, ones(flex_data.numRVs))
@test all(getmean(m) .== ones(flex_data.numRVs))
setmean(m, means)
