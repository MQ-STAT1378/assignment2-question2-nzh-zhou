
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Queue system simulator

<!-- badges: start -->

[![R-CMD-check](https://github.com/MQ-STAT1378/assignment2-question2-nzh-zhou/workflows/R-CMD-check/badge.svg)](https://github.com/MQ-STAT1378/assignment2-question2-nzh-zhou/actions)
<!-- badges: end -->

This package simulates the customer queue system of a bank. In the
function `Multiserver`, input information on the customer arrival and
service time and the bank’s number of customer service servers.

## Installation

You can install this package via github. First, clone the repository,
which can be done by running
`git clone https://github.com/MQ-STAT1378/assignment2-question2-nzh-zhou`
in your shell (if you have access to this repo), then running the
following code in R. Don’t forget to delete the cloned local repository.

``` r
# install.packages("devtools")
devtools::install_git("https://github.com/MQ-STAT1378/assignment2-question2-nzh-zhou")
```

## Example

The data.frame `bank` simulates the customer arrival and service times
of a bank. We use it here to simulate the queue system of a bank.

``` r
library(banksim)
head(Multiserver(bank$arrival_time, bank$service_time, 3))
#> # A tibble: 6 × 4
#>   Arrivals ServiceBegins ChosenServer ServiceEnds
#>      <dbl>         <dbl>        <dbl>       <dbl>
#> 1     119.          119.            1        149.
#> 2     134.          134.            2        289.
#> 3     326.          326.            3        356.
#> 4     339.          339.            1        424.
#> 5     372.          372.            2        652.
#> 6     396.          396.            3        474.
```
