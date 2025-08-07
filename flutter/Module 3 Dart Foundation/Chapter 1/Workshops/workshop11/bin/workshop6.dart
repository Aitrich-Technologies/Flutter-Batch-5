void main(List<String> args) {
  for (int i = 0; i <= 6; i++) {

    if(i == 3)  {
      print('Skipped $i but loop continues');
      continue;
    }
    print(i);
  }
}