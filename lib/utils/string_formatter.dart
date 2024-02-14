
extension UpperLow on String {
  String firstUpper(){
    return this[0].toUpperCase()+substring(1,length);
  }
}