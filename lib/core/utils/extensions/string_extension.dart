extension StringExtensions on String {
  /// Checks if string is null OR empty OR only spaces
  bool get isNullOrEmpty => trim().isEmpty;

  /// Capitalize first letter: "hello" → "Hello"
  String capitalize() {
    if (this.isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }

  /// Capitalize every word: "hello world" → "Hello World"
  String capitalizeWords() {
    return split(" ")
        .map((word) =>
            word.isEmpty ? word : word[0].toUpperCase() + word.substring(1))
        .join(" ");
  }

  /// Convert to int safely
  int toInt({int defaultValue = 0}) {
    return int.tryParse(this) ?? defaultValue;
  }

  /// Convert to double safely
  double toDouble({double defaultValue = 0.0}) {
    return double.tryParse(this) ?? defaultValue;
  }

  /// Remove all spaces
  String removeSpaces() => replaceAll(" ", "");

  /// Check valid email
  bool get isValidEmail {
    final emailRegex = RegExp(
      r"^[\w\.-]+@[\w\.-]+\.\w+$",
    );
    return emailRegex.hasMatch(this);
  }

  /// Check valid phone (Indian format example)
  bool get isValidPhone {
    final phoneRegex = RegExp(r'^[6-9]\d{9}$');
    return phoneRegex.hasMatch(this);
  }

  /// Return only numbers from string
  String get onlyDigits => replaceAll(RegExp(r'[^0-9]'), '');

  /// Check if numeric
  bool get isNumeric => double.tryParse(this) != null;

  /// Convert snake_case → camelCase
  String toCamelCase() {
    return replaceAllMapped(RegExp(r'_(\w)'), (match) {
      return match.group(1)!.toUpperCase();
    });
  }

  /// Convert camelCase → snake_case
  String toSnakeCase() {
    return replaceAllMapped(RegExp(r'[A-Z]'), (match) {
      return "_${match.group(0)!.toLowerCase()}";
    });
  }

  /// Limit string with "..."
  String limit(int maxLength) {
    if (length <= maxLength) return this;
    return substring(0, maxLength) + "...";
  }
}
