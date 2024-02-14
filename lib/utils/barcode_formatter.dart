class BarCodeFormatter {
  static String formatter({required String code}) {
    try {
      return '${code.substring(0, 4)}.${code.substring(5, 9)} ${code.substring(10, 14)}.${code.substring(15, 20)} ${code.substring(21, 26)}.${code.substring(27, 32)} ${code.substring(33)} ${code.substring(34, 47)}';
    } catch (e) {
      return code;
    }
  }
}
