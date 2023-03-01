using CSV
using DataFrames
using Plots

books_data = CSV.File("Dataframes/books.csv")
books = DataFrame(books_data)

println(names(books))
println(size(books))
println(describe(books))


