double calculateArea(double height, double base) {
  double area =  height * base * 0.5;
  double roundedArea = double.parse(area.toStringAsFixed(2));
  return roundedArea;
}