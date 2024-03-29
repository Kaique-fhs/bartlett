% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MEM.R
\name{MEM}
\alias{MEM}
\title{Bartlett correction in models with errors in variables}
\usage{
MEM(formula = y ~ x, lambda_x = F, lambda_e = F, beta_til = 1, Correction = T)
} 
\arguments{
\item{formula}{Declare x and y as a vector of numbers of the same size.}

\item{lambda_x}{Declare as a single number greater than zero.}

\item{lambda_e}{Declare as a single number greater than zero.}

\item{beta_til}{Declare as a single number.}

\item{Correction}{Declare to be TRUE or FALSE. If TRUE, the output is Bartlett corrected.}
}
\value{
Application of Bartlett's correction in the model with errors in the variables.
}
\description{
Bartlett correction in models with errors in variables
}
\details{
The following conditions must be respected:
    1 - Declare x and y as a vector of numbers of the same size.
    2 - Declare beta_til as a number, remembering that H_0: beta = beta_til.
    3 - Declare beta_til as a number, remembering that H_0: beta = beta_til.
    4 - Declare lambda_x or lambda_e ratios as a number greater than zero.
    5 - Remember to declare only one or the other. Use the one where you will admit to being known.
    5 - Default: lambda_x = FALSE, lambda_e = FALSE, beta_til = 0, Correction = TRUE.
}
\examples{
x = c(9, 6.6, 12.3, 11.9, 11.9, 12, 9.6, 7.5, 10.9, 10.4, 10.2, 7.4, 11 ,11.8, 8.2)
y = c(8, 6, 9.8, 10.8, 9.7, 9.3, 9.2, 6.9, 8.1, 8.7, 8.7, 7.4, 10.1, 10, 7.3)
MEM( y~x, lambda_e = 6^(-1), Correction = TRUE)

}
\seealso{
\code{\link[stats]{lm}}, \code{\link[base]{+}}
}
\author{
Kaique Souza e Tatiane Silva
}
