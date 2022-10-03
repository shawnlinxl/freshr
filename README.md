
# freshr

<!-- badges: start -->
[![CRAN status](https://www.r-pkg.org/badges/version/freshr)](https://CRAN.R-project.org/package=freshr)
[![R CMD CHECK](https://github.com/shawnlinxl/freshr/actions/workflows/R_CMD_CHECK.yml/badge.svg)](https://github.com/shawnlinxl/freshr/actions/workflows/R_CMD_CHECK.yml)
[![codecov](https://codecov.io/gh/shawnlinxl/freshr/branch/master/graph/badge.svg?token=4XBHTBGFEK)](https://app.codecov.io/gh/shawnlinxl/freshr)
[![](https://cranlogs.r-pkg.org/badges/freshr)](https://cran.r-project.org/package=freshr)
<!-- badges: end -->

The goal of freshr is to help you refresh your working environment in Rstudio and create reproducible scripts.

## Installation

To install the official CRAN version, run:

``` r
install.packages("freshr"")
```

You can install the development version of freshr like so:

``` r
remotes::install_github("shawnlinxl/freshr"")
```

## Example

freshr is meant to be called once at the top of your script. Call it at the top of your main.R script if it is a project with multiple scripts. Source your script and see after the environment is refreshed whether your script contains all the imports and variables needed for it to execute.

Example:

``` r
freshr::freshr()

library(ggplot2)
ggplot(mtcars) + geom_point(aes(x = mpg, y = hp))
```
