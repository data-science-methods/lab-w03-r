source("../lab.R", echo = TRUE, chdir = TRUE)
library(testthat)

test_that('2. `dataf` should be identical to the third element of `tt_data`', {
          expect_identical(dataf[,1:6], tt_data$fed_r_d_spending[])
})

test_that('2. `dataf` should be the element itself, not a list containing the element', {
    expect_failure(expect_s3_class(dataf, 'list'))
})

test_that('3. What is the class of `dataf`?', {
    expect_s3_class(dataf, 'data.frame')
})

## This is one reason why I strongly prefer functional programming
test_that('3. What are its dimensions?', {
    ## Version 1, with 6 columns, for problem 3
    skip_if(ncol(dataf) > 6, message = 'dataf has > 6 columns after problem 5')
    expect_equal(dim(dataf), c(588L, 6L))
})
test_that('3. What are its dimensions?', {
    ## Version 2, with 7 columns, after problem 5
    skip_if(ncol(dataf) < 7, message = 'dataf has < 7 columns before problem 5')
    expect_equal(dim(dataf), c(588L, 7L))
})

warning('Can\'t automatically check written short answers')
warning('4. Can\'t automatically check plots')
warning('5. Can\'t automatically check plots')
