// ignore_for_file: file_names

import 'package:intl/intl.dart';

class FormatRealFormatter {
  static String formatter({required num value}) {
    try {
      final formatReal = NumberFormat("#,##0.00", "pt_BR");
      return formatReal.format(value);
    } catch (e) {
      return value.toString();
    }
  }
}
