R_HOME= /home/akhila/lib/R
 COMMON_FLAGS = ~/R/LOPART/inst/testfiles/write_index_outofbound_DeepState_TestHarness.o -I/home/akhila/R/RcppDeepState/inst/include/deepstate -L/usr/local/lib/R/site-library/RInside/lib -Wl,-rpath=/usr/local/lib/R/site-library/RInside/lib -L${R_HOME}/lib -Wl,-rpath=${R_HOME}/lib -L/home/akhila/R/RcppDeepState/inst/extdata -Wl,-rpath=/home/akhila/R/RcppDeepState/inst/extdata -lR -lRInside -ldeepstate 

~/R/LOPART/inst/testfiles/write_index_outofbound_DeepState_TestHarness : ~/R/LOPART/inst/testfiles/write_index_outofbound_DeepState_TestHarness.o 
	 clang++ -o  ~/R/LOPART/inst/testfiles/write_index_outofbound_DeepState_TestHarness ${COMMON_FLAGS} /home/akhila/R/RcppDeepState/inst/testpkgs/testSAN/src/*.o
	cd ~/R/LOPART/inst/testfiles && valgrind --tool=memcheck --leak-check=yes ./write_index_outofbound_DeepState_TestHarness --fuzz --fuzz_save_passing --output_test_dir ~/R/LOPART/inst/testfiles/write_index_outofbound_output > ~/R/LOPART/inst/testfiles/write_index_outofbound_log 2>&1 
 ~/R/LOPART/inst/testfiles/write_index_outofbound_DeepState_TestHarness.o : ~/R/LOPART/inst/testfiles/write_index_outofbound_DeepState_TestHarness.cpp
	clang++ -I${R_HOME}/include -I/usr/local/lib/R/site-library/Rcpp/include -I/usr/local/lib/R/site-library/RInside/include -I/home/akhila/R/RcppDeepState/inst/include ~/R/LOPART/inst/testfiles/write_index_outofbound_DeepState_TestHarness.cpp -o ~/R/LOPART/inst/testfiles/write_index_outofbound_DeepState_TestHarness.o -c
