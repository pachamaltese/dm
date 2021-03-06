% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/foreign-keys.R
\name{dm_get_all_fks}
\alias{dm_get_all_fks}
\title{Get foreign key constraints}
\usage{
dm_get_all_fks(dm)
}
\arguments{
\item{dm}{A \code{dm} object.}
}
\value{
A tibble with the following columns:
\describe{
\item{\code{child_table}}{child table,}
\item{\code{child_fk_cols}}{foreign key column in child table,}
\item{\code{parent_table}}{parent table.}
}
}
\description{
Get a summary of all foreign key relations in a \code{\link{dm}}.
}
\section{Compound keys}{


Currently, keys consisting of more than one column are not supported.
\href{https://github.com/krlmlr/dm/issues/3}{This feature} is planned for dm 0.2.0.
Therefore the \code{child_fk_cols} column may contain vectors of length greater than one.
}

\examples{
\dontshow{if (rlang::is_installed("nycflights13")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
dm_nycflights13() \%>\%
  dm_get_all_fks()
\dontshow{\}) # examplesIf}
}
\seealso{
Other foreign key functions: 
\code{\link{dm_add_fk}()},
\code{\link{dm_enum_fk_candidates}()},
\code{\link{dm_get_fk}()},
\code{\link{dm_has_fk}()}
}
\concept{foreign key functions}
