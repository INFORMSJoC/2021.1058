[![INFORMS Journal on Computing Logo](https://INFORMSJoC.github.io/logos/INFORMS_Journal_on_Computing_Header.jpg)](https://pubsonline.informs.org/journal/ijoc)

# alfonso: ALgorithm FOr Non-Symmetric Optimization

## A fast, open-source Matlab solver for conic optimization

This archive is distributed in association with the [INFORMS Journal on
Computing](https://pubsonline.informs.org/journal/ijoc) under the [2-Clause BSD License](LICENSE).

The software in this repository is a snapshot (last revised on 2020/07/20) of the software that was used in the research reported on in the paper [alfonso: Matlab package for nonsymmetric conic optimization](WILL INSERT LINK HERE) by D. Papp and S. Yildiz.

**Important: This code is being developed on an ongoing basis at [https://github.com/dpapp-github/alfonso](https://github.com/dpapp-github/alfonso). Please go there if you would like to get a more recent version or would like support.**

The package also includes an implementation of the sum-of-squares optimization approach based on non-symmetric conic optimization and polynomial interpolants presented in:

D. Papp and S. Yıldız. Sum-of-squares optimization without semidefinite programming. *SIAM Journal on Optimization* 29(1), 2019, pp. 822-851. [https://doi.org/10.1137/17M1160124](https://doi.org/10.1137/17M1160124)

## Citing alfonso

To cite alfonso, please cite the [research article](https://doi.org/10.1287/ijoc.TBD) and/or the software itself:

WILL INSERT DOI/LINK HERE 

## Installation

`alfonso` is entirely written in Matlab m-code. To install, unzip the downloaded files in any directory and add the src directory to the Matlab (or Octave) path. ADDITIONAL DEPENDENCIES (IN SOME EXAMPLES).

## Additional information

This package is based on a infeasible-start primal-dual interior-point algorithm that originally appeared in:

A. Skajaa and Y. Ye, A homogeneous interior-point algorithm for nonsymmetric convex conic optimization, *Mathematical Programming Ser. A*, 150 (2015), pp. 391-422. [https://doi.org/10.1007/s10107-014-0773-1](https://doi.org/10.1007/s10107-014-0773-1)

The implementation is derived from the corrected analysis of this algorithm presented in:

D. Papp and S. Yıldız. On “A homogeneous interior-point algorithm for nonsymmetric convex conic optimization”. [https://arxiv.org/abs/1712.00492](https://arxiv.org/abs/1712.00492)

The code in `residual3p.m` is an implementation of the triple-precision accumulated inner product and residual computation. It was adapted from the code of Cleve Moler from a MATLAB Central [blog post](
https://blogs.mathworks.com/cleve/2015/03/02/triple-precision-accumlated-inner-product/).
