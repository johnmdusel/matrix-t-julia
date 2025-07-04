using Distributions
using PDMats
using CSV
using Tables

ν = 5
M = [1 2 3; 4 5 6]
Σ = PDMats.PDMat([1 0.5; 0.5 1])
Ω = PDMats.PDMat([1 0.3 0.2; 0.3 1 0.4; 0.2 0.4 1])

dist = MatrixTDist(ν, M, Σ, Ω)

samples = rand(dist, 10)
print(samples)

CSV.write("matrix_t_samples.csv",  Tables.table(samples), writeheader=false)