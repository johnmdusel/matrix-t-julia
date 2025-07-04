FROM julia:1.11.5

RUN julia -e 'using Pkg; Pkg.add("Distributions"); Pkg.add("PDMats")'

WORKDIR /usr/src