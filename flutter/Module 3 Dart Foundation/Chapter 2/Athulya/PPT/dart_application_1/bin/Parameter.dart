void main(){
positionparameter('Parameter 1','parameter 2');
positionparameter('parameter 1');
Named(one: 'parameter 1',two: 'parameter 2');
Default('parameter 1', two:'parameter 2');
}

void positionparameter(String? one,[String ?two]){
  print(one);
  print(two);
}

void Named({String ?one,String ?two}){
  print('parameter one:$one');
  print('parameter two:$two');
}

void Default(String one,{String two="hlo"}){
  print('parameter one:$two');
  print('parameter two:$one');
}