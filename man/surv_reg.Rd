% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/surv_reg.R
\name{surv_reg}
\alias{surv_reg}
\title{Parametric survival regression}
\usage{
surv_reg(mode = "regression", engine = "survival", dist = NULL)
}
\arguments{
\item{mode}{A single character string for the prediction outcome mode.
The only possible value for this model is "regression".}

\item{engine}{A single character string specifying what computational engine
to use for fitting.}

\item{dist}{A character string for the probability distribution of the
outcome. The default is "weibull".}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}

This function is soft-deprecated in favor of \code{survival_reg()} which uses the
\code{"censored regression"} mode.

\code{surv_reg()} defines a parametric survival model.

\Sexpr[stage=render,results=rd]{parsnip:::make_engine_list("surv_reg")}

More information on how \pkg{parsnip} is used for modeling is at
\url{https://www.tidymodels.org/}.
}
\details{
This function only defines what \emph{type} of model is being fit. Once an engine
is specified, the \emph{method} to fit the model is also defined. See
\code{\link[=set_engine]{set_engine()}} for more on setting the engine, including how to set engine
arguments.

The model is not trained or fit until the \code{\link[=fit.model_spec]{fit()}} function is used
with the data.

Since survival models typically involve censoring (and require the use of
\code{\link[survival:Surv]{survival::Surv()}} objects), the \code{\link[=fit.model_spec]{fit.model_spec()}} function will require that the
survival model be specified via the formula interface.
}
\examples{
show_engines("surv_reg")

surv_reg(mode = "regression", dist = "weibull")
}
\references{
\url{https://www.tidymodels.org}, \href{https://www.tmwr.org/}{\emph{Tidy Modeling with R}}, \href{https://www.tidymodels.org/find/parsnip/}{searchable table of parsnip models}
}
\seealso{
\Sexpr[stage=render,results=rd]{parsnip:::make_seealso_list("surv_reg")}
}
\keyword{internal}
