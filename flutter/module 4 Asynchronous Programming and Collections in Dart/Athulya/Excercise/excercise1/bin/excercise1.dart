
void main(List<String> arguments) {
  Map<String,double>pet={"Bella":1.5,"Lucky":0.8,"Loki":1.2,"Leo":2.0,"oggy":3.5};
  print("Pet Prices:${pet}");

 double totalCost=pet.values.reduce((value, element) => value+element,);

  print("Total cost:\$${totalCost.toStringAsFixed(2)}");

}
