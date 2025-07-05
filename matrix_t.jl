using DelimitedFiles
using Distributions
using PDMats
using Random

Random.seed!(42)

ν = 5
M = [1 2 3; 4 5 6]
Σ = PDMats.PDMat([1 0.5; 0.5 1])
Ω = PDMats.PDMat([1 0.3 0.2; 0.3 1 0.4; 0.2 0.4 1])

dist = MatrixTDist(ν, M, Σ, Ω)

samples = rand(dist, 10)

pdfs = [pdf(dist, s) for s in samples]

flat_samples = [vec(permutedims(s)) for s in samples]

writedlm("matrix_t_samples.csv", flat_samples, ",")
writedlm("matrix_t_pdfs.csv", pdfs, ",")