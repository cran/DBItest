% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spec-arrow-fetch-arrow.R
\docType{data}
\name{spec_arrow_fetch_arrow}
\alias{spec_arrow_fetch_arrow}
\title{spec_arrow_fetch_arrow}
\value{
\code{dbFetchArrow()} always returns an object coercible to a \link{data.frame}
with as many rows as records were fetched and as many
columns as fields in the result set,
even if the result is a single value
or has one
or zero rows.
}
\description{
spec_arrow_fetch_arrow
}
\section{Failure modes}{

An attempt to fetch from a closed result set raises an error.
}

\section{Specification}{

Fetching multi-row queries with one
or more columns by default returns the entire result.
The object returned by \code{dbFetchArrow()} can also be passed to
\code{\link[nanoarrow:as_nanoarrow_array_stream]{nanoarrow::as_nanoarrow_array_stream()}} to create a nanoarrow
array stream object that can be used to read the result set
in batches.
The chunk size is implementation-specific.
}

\seealso{
Other Arrow specifications: 
\code{\link{spec_arrow_append_table_arrow}},
\code{\link{spec_arrow_create_table_arrow}},
\code{\link{spec_arrow_fetch_arrow_chunk}},
\code{\link{spec_arrow_get_query_arrow}},
\code{\link{spec_arrow_read_table_arrow}},
\code{\link{spec_arrow_send_query_arrow}},
\code{\link{spec_arrow_write_table_arrow}},
\code{\link{spec_result_clear_result}}
}
\concept{Arrow specifications}
