% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spec-sql-append-table.R
\docType{data}
\name{spec_sql_append_table}
\alias{spec_sql_append_table}
\title{spec_sql_append_table}
\value{
\code{dbAppendTable()} returns a
scalar
numeric.
If the table does not exist,
or the data frame with the new data has different column names,
an error is raised; the remote table remains unchanged.

An error is raised when calling this method for a closed
or invalid connection.
An error is also raised
if \code{name} cannot be processed with \code{\link[=dbQuoteIdentifier]{dbQuoteIdentifier()}}
or if this results in a non-scalar.
Invalid values for the \code{row.names} argument
(non-scalars,
unsupported data types,
\code{NA})
also raise an error.

SQL keywords can be used freely in table names, column names, and data.
Quotes, commas, and spaces can also be used in the data,
and, if the database supports non-syntactic identifiers,
also for table names and column names.

The following data types must be supported at least,
and be read identically with \code{\link[=dbReadTable]{dbReadTable()}}:
\itemize{
\item integer
\item numeric
(the behavior for \code{Inf} and \code{NaN} is not specified)
\item logical
\item \code{NA} as NULL
\item 64-bit values (using \code{"bigint"} as field type); the result can be
\itemize{
\item converted to a numeric, which may lose precision,
\item converted a character vector, which gives the full decimal
representation
\item written to another table and read again unchanged
}
\item character (in both UTF-8
and native encodings),
supporting empty strings
\item factor (returned as character,
with awarning)
\item list of raw
(if supported by the database)
\item objects of type \link[blob:blob]{blob::blob}
(if supported by the database)
\item date
(if supported by the database;
returned as \code{Date})
\item time
(if supported by the database;
returned as objects that inherit from \code{difftime})
\item timestamp
(if supported by the database;
returned as \code{POSIXct}
respecting the time zone but not necessarily preserving the
input time zone)
}

Mixing column types in the same table is supported.
}
\description{
spec_sql_append_table
}
\section{Specification}{

The \code{name} argument is processed as follows,
to support databases that allow non-syntactic names for their objects:
\itemize{
\item If an unquoted table name as string: \code{dbAppendTable()} will do the quoting,
perhaps by calling \code{dbQuoteIdentifier(conn, x = name)}
\item If the result of a call to \code{\link[=dbQuoteIdentifier]{dbQuoteIdentifier()}}: no more quoting is done
}

The \code{row.names} argument must be \code{NULL}, the default value.
Row names are ignored.
All other values for the \code{row.names} argument
(in particular \code{TRUE},
\code{NA},
and a string)
raise an error.
}

\keyword{internal}
