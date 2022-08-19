testthat::test_that("Dropping Variables Work", {

    var1 <- "a"
    var2 <- 2
    var3 <- rep(var1, 10)
    freshr::freshr()
    testthat::expect_equal(length(ls(envir = .GlobalEnv)), 0)

})


testthat::test_that("Dropping Packages Work", {

    library(testthat)
    freshr::freshr()
    testthat::expect_equal(sessionInfo()$otherPkgs, NULL)

})
