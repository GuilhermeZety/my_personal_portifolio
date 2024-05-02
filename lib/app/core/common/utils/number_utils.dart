class NumberUtils {
  static String treatePhoneNumber(String number) => number.replaceAll(RegExp(r'[ \-()]'), '');

  static String onlyNumbers(String number) => number.replaceAll(RegExp(r'[^0-9]'), '');
}
