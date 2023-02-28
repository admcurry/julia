
using CSV
using DataFrames

books = DataFrame(CSV.File("books.csv"))
books