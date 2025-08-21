void main(){

}

abstract class calculation{
void variable(int x,int y);

void add(int x,int y){
  print('add=${x+y}');
}

void substract(int x,int y){
  print('Substract=${x-y}');
}


}

class answer extends calculation{
  @override
  void variable(int x, int y) {
    
  }


}