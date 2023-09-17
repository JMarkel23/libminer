#Function do describe # of packages in a library
#' R Library Summary
#' @param sizes logical indicating whether or not to calculate library sizes. Default `FALSE`.
#'Provide a brief summary of your the package libraries on your machine
#' @return A `data.frame` containing the count of packages in each of the
#'  user's libraries
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function(sizes = FALSE) {
  if(!is.logical(sizes)){
    stop("`sizes` must be TRUE or FALSE")
  } #Check conditions up front, so it fails early
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[,"LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  if (sizes) {
    pkg_df$lib_size <- sapply(
      pkg_df$Library,
      function(x) {
        sum(fs::file_size(fs::dir_ls(x,recurse = TRUE)))
      }
    )

  }

  pkg_df
  #sapply loops over every variable in the pkg_df columns
}


