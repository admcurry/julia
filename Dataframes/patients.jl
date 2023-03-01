

using Statistics
using CSV
using DataFrames
using PlotlyJS

patients_data = CSV.File("Dataframes/patients.csv")
patients = DataFrame(patients_data)

mean_hr = mean(patients.heartrate) #finding mean of a column
std_hr = std(patients.heartrate) #finding standard deviation of a column

norm_heartrate = (patients.heartrate .- mean_hr) ./ std_hr #finding the normalized heartrate
patients[:, "norm_heartrate"] = norm_heartrate #adding this to a new column in the dataframe

p = plot(rand(10, 4))
print(p)

