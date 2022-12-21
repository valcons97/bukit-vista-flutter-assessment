/// Extension methods for [int] data
extension StringX on String {
  String toCurrency([String fallback = '0']) {
    return 'Rp ${toIDRFormat(fallback)},00';
  }

  String toIDRFormat([String fallback = '0']) {
    // String is malformed
    if (!isNumeric() || length < 3) return fallback;

    /// Pick the rest of the digits & format them
    final body = substring(0).formatNumber('.');

    return body;
  }

  String formatNumber(String separator) {
    if (!isNumeric()) return '';

    /// Individual formatted digits
    final List<dynamic> digits = [];

    for (int i = 0; i < length; i++) {
      /// Insert separator every three digits
      if (i % 3 == 0 && i != 0) {
        digits.insert(0, separator);
      }

      digits.insert(0, this[length - (i + 1)]);
    }

    final buffer = StringBuffer();
    buffer.writeAll(digits);
    return buffer.toString();
  }

  /// Checks if a [String] is numeric
  ///
  /// i.e can be parsed to a number
  bool isNumeric() {
    return double.tryParse(this) != null;
  }
}
