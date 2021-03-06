\name{DropletUtilsnews}
\title{DropletUtils News}
\encoding{UTF-8}

\section{Version 1.10.0}{\itemize{
\item Migrated \code{downsampleMatrix()} to \pkg{scuttle} with a re-export.

\item Added \code{features=} to \code{downsampleReads()} for per-feature-set downsampling.

\item Added matrix support for \code{y=} and \code{ambient=} in \code{maximumAmbience()}.

\item Added \code{controlAmbience()} for easy estimation of ambient contamination with control features.

\item Report library index and feature type in output of \code{read10xMolInfo()}.

\item Support subsetting by library index/type in functions that use the molecule information file,
such as \code{swappedDrops()} and \code{chimericDrops()}.

\item Added \code{by.rank=} option to \code{estimateAmbience()} and \code{emptyDrops()},
for estimation of the ambient profile by excluding barcodes with the largest totals.
}}

\section{Version 1.8.0}{\itemize{
\item Added the downsampleBatches() function for convenient downsampling of batches.

\item Preliminary support for using the output of write10xCounts() back in Cellranger.

\item Support reading in 10X output files via prefixes in read10xCounts().
Automatic detection of whether a file is Gzipped or not.

\item Added chimericDrops() to remove chimeric molecules due to within-sample re-priming.

\item Added hashedDrops() to demultiplex cell hashing experiments.

\item Added maximumAmbience() to estimate the maximum contribution of the ambient profile.
}}

\section{Version 1.6.0}{\itemize{
\item Switched emptyDrops() to use Boost's discrete_distribution for weighted sampling. 
This results in some minor stochastic changes to the Monte Carlo p-values.
Automatically round non-integer count matrices.
}}

\section{Version 1.4.0}{\itemize{
\item Removed read10xMatrix().

\item Supported CellRanger v3 output files in read10xMolInfo(), read10xCounts(), write10xCounts().

\item Modified barcodeRanks() to return a DataFrame with knee/inflection estimates in metadata.

\item Slight change to random number generation in emptyDrops() to be agnostic to number of cores.
}}

\section{Version 1.2.0}{\itemize{
\item Added removeSwappedDrops() for removing swapping in other types of droplet-based data.

\item Added alpha= argument to testEmptyDrops() to support overdispersion during sampling.
Returned arguments and estimates in metadata of testEmptyDrops(), emptyDrops().

\item Added encodeSequences() for convenient 2-bit encoding of sequences.

\item Added get10xMolInfoStats() function to compute per-cell statistics from a molecule info file.

\item Deprecated read10xMatrix(), as it does not add much practical value over Matrix::readMM().

\item Support the 10X sparse HDF5 format in read10xCounts().

\item Support the 10X sparse HDF5 format in write10xCounts().
}}

\section{Version 1.0.0}{\itemize{
\item
New package DropletUtils, for handling droplet-based single-cell RNA sequencing data.
}}

