#' @import data.table
#' @import mlr3
#' @importFrom utils head hsearch_db
NULL

db = new.env()
db$index = c("base", "utils", "datasets", "data.table", "stats")
db$hosted = c("paradox", "mlr3misc", "mlr3", "mlr3db", "mlr3proba", "mlr3pipelines", "mlr3learners", "mlr3filters", "mlr3tuning", "mlr3viz")

lgr = NULL

.onLoad = function(libname, pkgname) {
  db$base = NULL
  db$aliases = NULL

  lgr <<- lgr::get_logger("mlr3book")
  # root = rprojroot::find_package_root_file()
  # logfile = file.path(root, "mlr3book.log")
  # lgr$set_appenders(lgr::AppenderFile$new(logfile))
}
