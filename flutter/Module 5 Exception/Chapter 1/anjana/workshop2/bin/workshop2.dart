void main(List<String> args) {

var x = 'Empetz';

try{
  int xy = int.parse(x);
  print(xy);
} on FormatException catch(e){
  print(' Caugh FormatException: $e');
}

catch(e) {
  int xy = int.parse(x);
  print(xy);
}

}