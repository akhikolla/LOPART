#include <deepstate/DeepState.hpp>
#include <RInside.h>
#include <iostream>
#include <RcppDeepState.h>
#include <fstream>
 Rcpp::DataFrame LOPART_interface(Rcpp::NumericVector input_data, Rcpp::IntegerVector input_label_start, Rcpp::IntegerVector input_label_end, Rcpp::IntegerVector input_label_changes, int n_updates, double penalty_unlabeled, double penalty_labeled);
TEST(LOPART_interface_random_datatypes,LOPART_interface_test){
std::ofstream  input_data_stream;
std::ofstream  input_label_start_stream;
std::ofstream  input_label_end_stream;
std::ofstream  input_label_changes_stream;
std::ofstream  n_updates_stream;
std::ofstream  penalty_unlabeled_stream;
std::ofstream  penalty_labeled_stream;
 RInside();
 NumericVector input_data = RcppDeepState_NumericVector ();
  input_data_stream.open("input_data");
 input_data_stream<< input_data;
std::cout <<"input_data values: "<< input_data << std::endl;
 input_data_stream.close();
 IntegerVector input_label_start = RcppDeepState_IntegerVector ();
  input_label_start_stream.open("input_label_start");
 input_label_start_stream<< input_label_start;
std::cout <<"input_label_start values: "<< input_label_start << std::endl;
 input_label_start_stream.close();
 IntegerVector input_label_end = RcppDeepState_IntegerVector ();
  input_label_end_stream.open("input_label_end");
 input_label_end_stream<< input_label_end;
std::cout <<"input_label_end values: "<< input_label_end << std::endl;
 input_label_end_stream.close();
 IntegerVector input_label_changes = RcppDeepState_IntegerVector ();
  input_label_changes_stream.open("input_label_changes");
 input_label_changes_stream<< input_label_changes;
std::cout <<"input_label_changes values: "<< input_label_changes << std::endl;
 input_label_changes_stream.close();
 int n_updates = RcppDeepState_int ();
  n_updates_stream.open("n_updates");
 n_updates_stream<< n_updates;
std::cout <<"n_updates values: "<< n_updates << std::endl;
 n_updates_stream.close();
 double penalty_unlabeled = RcppDeepState_double ();
  penalty_unlabeled_stream.open("penalty_unlabeled");
 penalty_unlabeled_stream<< penalty_unlabeled;
std::cout <<"penalty_unlabeled values: "<< penalty_unlabeled << std::endl;
 penalty_unlabeled_stream.close();
 double penalty_labeled = RcppDeepState_double ();
  penalty_labeled_stream.open("penalty_labeled");
 penalty_labeled_stream<< penalty_labeled;
std::cout <<"penalty_labeled values: "<< penalty_labeled << std::endl;
 penalty_labeled_stream.close();
 try{
 LOPART_interface(input_data, input_label_start, input_label_end, input_label_changes, n_updates, penalty_unlabeled, penalty_labeled);
}
catch(Rcpp::exception& e){
std::cout<<"Exception Handled"<<std::endl;
} 
 }
