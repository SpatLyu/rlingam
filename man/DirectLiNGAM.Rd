% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DirectLiNGAM.R
\name{DirectLiNGAM}
\alias{DirectLiNGAM}
\title{DirectLiNGAM class}
\description{
R implementation of direct LiNGAM algorithm

See reference for details of the algorithm
}
\references{
S. Shimizu, T. Inazumi, Y. Sogawa, A. Hyvärinen, Y. Kawahara, T. Washio, P. O. Hoyer and K. Bollen.
DirectLiNGAM: A direct method for learning a linear non-Gaussian structural equation model. Journal of Machine Learning Research, 12(Apr): 1225--1248, 2011.
}
\section{Super class}{
\code{rlingam::LiNGAM} -> \code{DirectLiNGAM}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-DirectLiNGAM-fit}{\code{DirectLiNGAM$fit()}}
\item \href{#method-DirectLiNGAM-estimate_causal_order}{\code{DirectLiNGAM$estimate_causal_order()}}
\item \href{#method-DirectLiNGAM-search_exogenous_variable}{\code{DirectLiNGAM$search_exogenous_variable()}}
\item \href{#method-DirectLiNGAM-residual}{\code{DirectLiNGAM$residual()}}
\item \href{#method-DirectLiNGAM-diff_mutual_info}{\code{DirectLiNGAM$diff_mutual_info()}}
\item \href{#method-DirectLiNGAM-entropy}{\code{DirectLiNGAM$entropy()}}
\item \href{#method-DirectLiNGAM-clone}{\code{DirectLiNGAM$clone()}}
}
}
\if{html}{\out{
<details open><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="rlingam" data-topic="LiNGAM" data-id="estimate_adjacency_matrix"><a href='../../rlingam/html/LiNGAM.html#method-LiNGAM-estimate_adjacency_matrix'><code>rlingam::LiNGAM$estimate_adjacency_matrix()</code></a></span></li>
<li><span class="pkg-link" data-pkg="rlingam" data-topic="LiNGAM" data-id="initialize"><a href='../../rlingam/html/LiNGAM.html#method-LiNGAM-initialize'><code>rlingam::LiNGAM$initialize()</code></a></span></li>
<li><span class="pkg-link" data-pkg="rlingam" data-topic="LiNGAM" data-id="predict_adaptive_lasso"><a href='../../rlingam/html/LiNGAM.html#method-LiNGAM-predict_adaptive_lasso'><code>rlingam::LiNGAM$predict_adaptive_lasso()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DirectLiNGAM-fit"></a>}}
\if{latex}{\out{\hypertarget{method-DirectLiNGAM-fit}{}}}
\subsection{Method \code{fit()}}{
fit DirectLiNGAM
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DirectLiNGAM$fit(X)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{X}}{(numeric matrix or data.frame) data matrix to fit}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DirectLiNGAM-estimate_causal_order"></a>}}
\if{latex}{\out{\hypertarget{method-DirectLiNGAM-estimate_causal_order}{}}}
\subsection{Method \code{estimate_causal_order()}}{
search causal ordering
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DirectLiNGAM$estimate_causal_order(X)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{X}}{(numerical matrix or data.frame) data matrix}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DirectLiNGAM-search_exogenous_variable"></a>}}
\if{latex}{\out{\hypertarget{method-DirectLiNGAM-search_exogenous_variable}{}}}
\subsection{Method \code{search_exogenous_variable()}}{
search exogenous variable
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DirectLiNGAM$search_exogenous_variable(X, U)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{X}}{(numerical matrix or data.frame) data matrix}

\item{\code{U}}{(numeric vector) index of each columns}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
index of estimated exogenous variable
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DirectLiNGAM-residual"></a>}}
\if{latex}{\out{\hypertarget{method-DirectLiNGAM-residual}{}}}
\subsection{Method \code{residual()}}{
residual when xi is regressed on xj
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DirectLiNGAM$residual(xi, xj)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{xi}}{(numeric vector) target variable}

\item{\code{xj}}{(numeric vector) explanatory variable}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
resid (numeric vector) calculated residual
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DirectLiNGAM-diff_mutual_info"></a>}}
\if{latex}{\out{\hypertarget{method-DirectLiNGAM-diff_mutual_info}{}}}
\subsection{Method \code{diff_mutual_info()}}{
calculate the difference of the mutual information
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DirectLiNGAM$diff_mutual_info(xi_std, xj_std, ri_j, rj_i)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{xi_std}}{(numeric vector) standardized xi}

\item{\code{xj_std}}{(numeric vector) standardized xj}

\item{\code{ri_j}}{(numeric vector) resid of xi_std regressed on xj_std}

\item{\code{rj_i}}{(numeric vector) resid of xj_std regressed on xi_std}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
scalar value of the difference of mutual information
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DirectLiNGAM-entropy"></a>}}
\if{latex}{\out{\hypertarget{method-DirectLiNGAM-entropy}{}}}
\subsection{Method \code{entropy()}}{
calculate entropy using maximum entropy approximation
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DirectLiNGAM$entropy(u)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{u}}{(numeric vector) vector to calculate entropy}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
scalar value of entropy
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DirectLiNGAM-clone"></a>}}
\if{latex}{\out{\hypertarget{method-DirectLiNGAM-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DirectLiNGAM$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
