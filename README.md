[![INFORMS Journal on Computing Logo](https://INFORMSJoC.github.io/logos/INFORMS_Journal_on_Computing_Header.jpg)](https://pubsonline.informs.org/journal/ijoc)

# alfonso: ALgorithm FOr Non-Symmetric Optimization

## A fast, open-source Matlab solver for conic optimization

This archive is distributed in association with the [INFORMS Journal on Computing](https://pubsonline.informs.org/journal/ijoc) under the [2-Clause BSD License](LICENSE).

The software in this repository is a snapshot (last revised on 2020/07/20) of the software that was used in the research reported in the paper [alfonso: Matlab package for nonsymmetric conic optimization](WILL INSERT LINK HERE) by Dávid Papp and Sercan Yıldız.

**Important: This code is being developed on an ongoing basis at [https://github.com/dpapp-github/alfonso](https://github.com/dpapp-github/alfonso). Please go there if you would like to get a more recent version or would like support.** This repository is a snapshot of that project, taken on 2020-Dec-22 from at [`commit bf57bce9eeb74824f1d873bb6cc02c896995d6be`](https://github.com/dpapp-github/alfonso/commit/bf57bce9eeb74824f1d873bb6cc02c896995d6be).

The package also includes an implementation of the sum-of-squares optimization algorithm based on non-symmetric conic optimization and polynomial interpolants presented in:

> D. Papp and S. Yıldız. Sum-of-squares optimization without semidefinite programming. *SIAM Journal on Optimization* 29(1), 2019, pp. 822-851. [https://doi.org/10.1137/17M1160124](https://doi.org/10.1137/17M1160124)

## Citing alfonso

To cite alfonso, please cite the [research article](https://doi.org/10.1287/ijoc.TBD) and the software itself:

WILL INSERT DOI/LINK HERE 

## Installation

`alfonso` is entirely written in Matlab m-code. To install, unzip the downloaded files in any directory and add the `src` subdirectory to the Matlab (or Octave) path.

The polynomial optimization (sum-of-squares) examples in `examples/poly_opt/` require the following additional software:

1. `Padua2DM` (a Matlab/Octave package by M. Caliari, S. De Marchi, A. Sommariva, and M. Vianello for interpolation and
cubature at the Padua points): [download](http://profs.sci.univr.it/~caliari/software.htm) to any directory and add its directory to the Matlab path.

2. `Chebfun` (an open-source package for numerical computing with functions): [download](http://www.chebfun.org/download/) and install following the installation instructions.
Our code has been developed and tested with Chebfun version 5.5.0.

3. `partitions` (a function by John D'Errico to compute all partitions of an integer): [download](https://www.mathworks.com/matlabcentral/fileexchange/12009-partitions-of-an-integer) to any directory and add its directory to the Matlab path.

## Contents

* `src`: source files for alfonso. Use `alfonso.m` for the oracle interface, `alfonso_simple` for the simple interface.
* `examples`: contains a number of optimization problems solved with `alfonso` or `alfonso_simple`:
  * `examples/random_lp`: solves a random linear programming problem using either interface.
  * `examples/exp_design`: solves an optimal design of experiments problem.
  * `examples/poly_opt`: solves various polynomial optimization problems using sum-of-squares optimization.
  * `examples/portfolio`: solves a mean-risk portfolio optimization problem with a factor risk model and market impact. 

## Additional information

This package is based on a infeasible-start primal-dual interior-point algorithm that originally appeared in:

> A. Skajaa and Y. Ye, A homogeneous interior-point algorithm for nonsymmetric convex conic optimization, *Mathematical Programming Ser. A*, 150 (2015), pp. 391-422. [https://doi.org/10.1007/s10107-014-0773-1](https://doi.org/10.1007/s10107-014-0773-1)

The implementation is derived from the corrected analysis of this algorithm presented in:

> D. Papp and S. Yıldız. On “A homogeneous interior-point algorithm for nonsymmetric convex conic optimization”. [https://arxiv.org/abs/1712.00492](https://arxiv.org/abs/1712.00492)

The code in `residual3p.m` is an implementation of the triple-precision accumulated inner product and residual computation. It was adapted from the code of Cleve Moler from a MATLAB Central [blog post](
https://blogs.mathworks.com/cleve/2015/03/02/triple-precision-accumlated-inner-product/).
