#' configr package implements the YAML parser, 
#' JSON parser, INI parser and TOML parser for R setting and writing of configuration file.
#' 
#' @author
#' Li Jianfeng \url{lee_jianfeng@sjtu.edu.cn}
#' @seealso
#' Useful links:
#'
#' \url{https://github.com/Miachol/configr} 
#'
#' Report bugs at \url{https://github.com/Miachol/configr/issues} 
#'
#' @examples
#' 
#'example.toml <- system.file('toml', 'example.toml', package='RcppTOML')
#'is.toml <- is.toml.file(example.toml)
#'file.type <- get.config.type(example.toml)
#'toml.list.raw <- read.config(example.toml)
#'owner.config <- eval.config(file = example.toml, config = 'owner')
#'owner.config.name <- eval.config(value = 'name', file = example.toml, config = 'owner')
#'toml.sections <- eval.config.sections(example.toml)
#'toml.merged.all <- eval.config.merge(example.toml)
#'toml.merged.selected <- eval.config.merge(example.toml, sections = c('database', 'owner'))
#'
#'others <- list(others = list(lastupdate='2017-01-07'))
#'toml.list.update <- config.list.merge(toml.list.raw, others)
#'
#' @docType package
#' @name configr
#' @import jsonlite RcppTOML yaml ini stringr glue
#' @importFrom utils download.file
NULL
