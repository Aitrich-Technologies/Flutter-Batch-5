void main()
{
  PositionedParameters('Parameter 1','parameter 2');
  PositionedParameters('Parameter 1');
  print('');
  NamedParameters(two:'parameter 2',one:'parameter 1');
  print('');
  defalutpara('parameter 1',two 'parameter 2');
  defalutpara('parameter 1');
  
}

void PositionedParameters(String ? one, [String ? two]) {
  print(one);
  print(two);
}

void NamedParameters({String ? one, String ? two}) {
  print('Parameter one : $one');
  print('parameter two : $two');
}
 void defalutpara({String one: ,String two = 'hlo'}){
  
  print('parameter one : $one');
  print('parametern two : $two');
 }


