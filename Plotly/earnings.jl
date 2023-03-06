using PlotlyJS, DataFrames

schools = ["Brown", "NYU", "Notre Dame", "Cornell", "Tufts", "Yale",
           "Dartmouth", "Chicago", "Columbia", "Duke", "Georgetown",
           "Princeton", "U.Penn", "Stanford", "MIT", "Harvard"]
n_schools = size(schools)[1]

women_salary = [72, 67, 73, 80, 76, 79, 84, 78, 86, 93, 94, 90, 92, 96, 94, 112]
men_salary = [92, 94, 100, 107, 112, 114, 114, 118, 119, 124, 131, 137, 141, 151, 152, 165]

df = DataFrame(
    school=vcat(repeat(schools, 2)),
    salary=vcat(men_salary, women_salary),
    gender=vcat(repeat(["Men"], n_schools), repeat(["Women"], n_schools))
)

# Use column names of df for the different parameters x, y, color, ...
p = plot(
    df,
    kind="scatter",
    marker=attr(size=12),
    mode="markers",
    x=:salary,
    y=:school,
    group=:gender,
    Layout(
        title="Gender Earnings Disparity",
        xaxis_title="Annual Salary (in thousands)" # customize axis label
    )
)
savefig(p, "p.html")