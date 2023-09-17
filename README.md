
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->

[![R-CMD-check](https://github.com/JMarkel23/libminer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/JMarkel23/libminer/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of libminer is to … help you understand your libraries better,
and learn how to write packages

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("JMarkel23/libminer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(libminer)

lib_summary()
#>                                                                   Library
#> 1                                      C:/Program Files/R/R-4.2.3/library
#> 2                        C:/Users/justinm/AppData/Local/R/win-library/4.2
#> 3 C:/Users/justinm/AppData/Local/Temp/Rtmp8eLglQ/temp_libpath60085d535291
#>   n_packages
#> 1         30
#> 2        256
#> 3          1

#Also can calculate sizes
lib_summary(sizes = TRUE)
#>                                                                   Library
#> 1                                      C:/Program Files/R/R-4.2.3/library
#> 2                        C:/Users/justinm/AppData/Local/R/win-library/4.2
#> 3 C:/Users/justinm/AppData/Local/Temp/Rtmp8eLglQ/temp_libpath60085d535291
#>   n_packages  lib_size
#> 1         30  67242362
#> 2        256 627093339
#> 3          1     12993
```
