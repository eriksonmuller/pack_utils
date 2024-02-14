import 'package:intl/intl.dart';

class DateFormatter {
  static String dateToString(DateTime date, {String format = 'yyyy-MM-dd'}) {
    return DateFormat(format).format(date);
  }

  static DateTime stringToDate(String date, {String format = 'yyy-MM-dd'}) {
    return DateFormat(format).parse(date);
  }

  static String stringToStringDate(String date, {String format = 'yyy-MM-dd'}) {
    return dateToString(stringToDate(date), format: format);
  }

  static String numberDateCorrection(int i) {
    if (i >= 10) return "$i";
    return "0$i";
  }
}
