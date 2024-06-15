List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = [];
    for (double temp in temperaturesInC) {
        double newTemp = (temp * 9 / 5) + 32;
        double roundedTemp = double.parse(newTemp.toStringAsFixed(2));
        temperaturesInF.add(roundedTemp);
    }
    return temperaturesInF;
}