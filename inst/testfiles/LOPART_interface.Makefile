R_HOME= /home/akhila/lib/R
 COMMON_FLAGS = /home/akhila/R/LOPART/inst/testfiles/LOPART_interface_DeepState_TestHarness.o -I/home/akhila/R/x86_64-pc-linux-gnu-library/3.6/RcppDeepState/include/deepstate -L/usr/lib/R/site-library/RInside/lib -Wl,-rpath=/usr/lib/R/site-library/RInside/lib -L${R_HOME}/lib -Wl,-rpath=${R_HOME}/lib -L/home/akhila/R/x86_64-pc-linux-gnu-library/3.6/RcppDeepState/lib -Wl,-rpath=/home/akhila/R/x86_64-pc-linux-gnu-library/3.6/RcppDeepState/lib -lR -lRInside -ldeepstate 

/home/akhila/R/LOPART/inst/testfiles/LOPART_interface_DeepState_TestHarness : /home/akhila/R/LOPART/inst/testfiles/LOPART_interface_DeepState_TestHarness.o 
	 clang++ -o  /home/akhila/R/LOPART/inst/testfiles/LOPART_interface_DeepState_TestHarness ${COMMON_FLAGS} /home/akhila/R/LOPART/src/*.o
	cd /home/akhila/R/LOPART/inst/testfiles && valgrind --tool=memcheck --leak-check=yes ./LOPART_interface_DeepState_TestHarness --fuzz --fuzz_save_passing --output_test_dir /home/akhila/R/LOPART/inst/testfiles/LOPART_interface_output > /home/akhila/R/LOPART/inst/testfiles/LOPART_interface_log 2>&1 
 /home/akhila/R/LOPART/inst/testfiles/LOPART_interface_DeepState_TestHarness.o : /home/akhila/R/LOPART/inst/testfiles/LOPART_interface_DeepState_TestHarness.cpp
	clang++ -I${R_HOME}/include -I/usr/lib/R/site-library/Rcpp/include -I/usr/lib/R/site-library/RInside/include -I/home/akhila/R/x86_64-pc-linux-gnu-library/3.6/RcppDeepState/include /home/akhila/R/LOPART/inst/testfiles/LOPART_interface_DeepState_TestHarness.cpp -o /home/akhila/R/LOPART/inst/testfiles/LOPART_interface_DeepState_TestHarness.o -c
