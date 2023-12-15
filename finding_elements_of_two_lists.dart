import 'package:flutter/foundation.dart';
show kDebugMode ;

void main(){
  List list= ['A','B','C','D','E','C'];
   List list2 =['C','D','E','F','G','C','D'];
   KI
   
   Map<String, int> map={};
   
  for(var s in list1){
    if(map.containsKey(s)){
  //we use ! to deal with nul\l safety
      map[s] = map[s]! +1
    }else{
      maps[s] = 1;
    }
  }
  List result=[];

//loop through list2  and check for common elements
for(var s in list2){
 
  if(map.containsKey(s)){
    if(map[s]! > 0){
      result.add(s);
      map[s]= 0;
    }
  }
}

if(kDebugMode){
  print(result);
  }
}