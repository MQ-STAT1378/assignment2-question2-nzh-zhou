
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Queue system simulator

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
library(Exercise2)
head(Multiserver(bank$arrival_time, bank$service_time, 3))
#>   Arrivals ServiceBegins ChosenServer ServiceEnds
#> 1 118.9688      118.9688            1    148.7928
#> 2 133.9700      133.9700            2    288.9776
#> 3 325.6309      325.6309            3    356.3327
#> 4 338.5996      338.5996            1    424.1283
#> 5 371.9286      371.9286            2    652.2320
#> 6 395.9377      395.9377            3    474.0537
```
