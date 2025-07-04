`matrix-t-julia`

A minimal working example that gets data from a matrix variate t-distribution.
This script generates random variates and evaluates the PDF on those variates.

# Set up the image and run the script 

```shell
docker build -t julia .
docker run --rm -it -v $PWD:/usr/src julia matrix_t.jl
```

# Outputs


## `matrix_t_samples.csv`. 

This CSV contains 10 rows; each row is a flattened random matrix.
This CSV contains 6 columns; columns 1 to 3 are the first row of the random matrix, columns 4 to 6 are the second row.

## `matrix_t_pdfs.csv`

This CSV contains 10 rows; each row is the value of the PDF evaluated at the random matrix in `matrix_t_samples.csv`. 