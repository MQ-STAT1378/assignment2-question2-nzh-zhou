test_that("Multiserver works", {
  expect_type(Multiserver(bank$arrival_time, bank$service_time, 3),
              "list")
  expect_s3_class(Multiserver(bank$arrival_time, bank$service_time, 3),
                  "data.frame")
  
  expect_error(Multiserver(bank$arrival_time, bank$service_time, -1),
               "Arrivals, ServiceTimes must be positive & NumServers must be positive")
  expect_error(Multiserver(c(203, -1, 451), c(122, 256, 391), 3), 
               "Arrivals, ServiceTimes must be positive & NumServers must be positive")
  expect_error(Multiserver(21, c(277, 188), 1), 
               "Arrivals and ServiceTimes must have the same length")
  
  expect_length(Multiserver(bank$arrival_time, bank$service_time, 3), 4)
  expect_identical(nrow(Multiserver(bank$arrival_time, bank$service_time, 3)),
                   nrow(bank))
})
