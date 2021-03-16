# Numba test on lambda

### Normal version specs:
#### Cold start
> Duration: 5633.02 ms Billed Duration: 5634 ms Memory Size: 128 MB Max Memory Used: 128 MB Init Duration: 2593.03 ms 

#### Next call
> Duration: 5582.00 ms Billed Duration: 5583 ms Memory Size: 128 MB Max Memory Used: 128 MB 

### Jitted version specs:
#### Cold start
> Duration: 6672.85 ms Billed Duration: 6673 ms Memory Size: 128 MB Max Memory Used: 128 MB Init Duration: 3001.05 ms

#### Next call
> Duration: 113.01 ms Billed Duration: 114 ms Memory Size: 128 MB Max Memory Used: 128 MB
