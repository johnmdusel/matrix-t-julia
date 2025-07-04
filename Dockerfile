FROM julia:1.11.5

RUN apt-get update \
    && apt install -y python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN julia -e 'using Pkg; Pkg.add("Distributions"); Pkg.add("PDMats"); Pkg.add("CSV"); Pkg.add("Tables")'

WORKDIR /usr/src