% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/configtype.R
\name{is.ini.file}
\alias{is.ini.file}
\title{Function to check wheather file is INI format}
\usage{
is.ini.file(file = Sys.getenv("R_CONFIGFILE_ACTIVE", "config.cfg"),
  ini.file.debug = FALSE, ...)
}
\arguments{
\item{file}{File name of configuration file to test. Defaults to the value of
the 'R_CONFIGFILE_ACTIVE' environment variable ('config.cfg' if the
variable does not exist and JSON/INI/YAML/TOML format only)}

\item{ini.file.debug}{If TRUE, it will show error infomation when read INI config,
default is FALSE}

\item{...}{Arguments for \code{\link[ini]{read.ini}}}
}
\value{
Logical indicating whether the specified configuration file is INI format
}
\description{
Function to check wheather file is INI format
}
\examples{
config.json <- system.file('extdata', 'config.json', package='configr')
config.ini <- system.file('extdata', 'config.ini', package='configr')
config.yaml <- system.file('extdata', 'config.yaml', package='configr')
config.toml <- system.file('extdata', 'config.toml', package='configr')
print(is.ini.file(config.ini))
print(is.ini.file(config.json))
print(is.ini.file(config.yaml))
print(is.ini.file(config.toml))
}
\seealso{
\code{\link{is.json.file}}, 
\code{\link{is.yaml.file}}, 
\code{\link{is.toml.file}}
}
