

void main(List<String> arguments) {
Map<String,double> Petprice = {
    "bella":1.5,
    "lucy":0.8,
    "loki":1.2,
    "leo":2.0,
    "oggy":3.5
};
print("pet price :$Petprice");
double totalcost = Petprice.values.reduce((value, element) => value + element);
print("total cost:\$${totalcost.toStringAsFixed(1)}");
}
