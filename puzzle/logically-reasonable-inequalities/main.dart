import 'dart:io';

//  Method to cehck if an object is present in two different list
bool anyContains(List a , List b){

  if( a.any( (item) => b.contains(item) ) )
  {
    return true;
  }
  else
  {
    return false;
  }
}
