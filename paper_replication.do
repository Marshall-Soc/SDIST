*Do-file to recreate examples in the paper (R&R).

***
//AUTHOR: Marshall A. Taylor
//DATE: January 14, 2018
//NOTE: sdist.ado must be installed prior to running this do-file (available through SSC). 
		//Also note that you will want to run each chunk independently, as
		//sdist will write over each consecutive graph and outputted 
		//datasets. Also note that example #3 requires Stata/SE or Stata/MP.
***

//begin
set more off

//Example #1
set seed 544
sdist, histplot samples(500) type(poisson) par2(1) ///
	saveplot1(emp_dist.gph) saveplot2(single_dist.gph) repplot combine

//Example #2
set seed 2144
sdist, histplot samples(500) obs(2000) repplot combine

//Example #3
set maxvar 32767
set seed 4816
sdist, samples(10000) obs(2000) histplot saveplot1(emp_dist.gph) /// 
	saveplot2(single_dist.gph) repplot combine

//end
