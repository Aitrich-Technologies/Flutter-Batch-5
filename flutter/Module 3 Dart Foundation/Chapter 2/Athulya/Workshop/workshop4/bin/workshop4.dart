void main()
{
  PositionedParameters('Parameter 1','parameter 2');
  PositionedParameters('Parameter 1');
  print('');
  NamedParameters(two:'parameter 2',one:'parameter 1');
  print('');
  Default('parameter 1',);
}

void PositionedParameters(String ? one, [String ? two]) {
  print(one);
  print(two);
}

void NamedParameters({String ? one, String ? two}) {
  print('Parameter one : $one');
  print('parameter two : $two');
}

void Default(String one,{String two="hlo"}){
  print('parameter one:$two');
  print('parameter two:$one');
}

