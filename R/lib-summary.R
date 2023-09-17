#Function do describe # of packages in a library
#' R Library Summary
#'
#'Provide a brief summary of your the package libraries on your machine
#' @return A `data.frame` containing the count of packages in each of the
#'  user's libraries
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function() {
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[,"LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df

}

