import 'package:intl/intl.dart';

class TimeFormatter {
  static String timeToString(DateTime time, {String format = 'yyyy-MM-dd HH:mm:ss'}) {
    return DateFormat(format).format(time);
  }

  static DateTime stringToTime(String time, {String format = 'yyyy-MM-dd HH:mm:ss'}) {
    return DateFormat(format).parse(time);
  }

   static String stringToStringTime(String time, {String format = 'yyyy-MM-dd HH:mm:ss'}) {
    return timeToString(stringToTime(time), format: format);
  }

  static String numberTimeCorrection(int i) {
    if (i >= 10) return "$i";
    return "0$i";
  }
}
