class Validators {
  static String? isRequired(String? value, {String message = "This field is required"}) {
    if (value == null || value.trim().isEmpty) {
      return message;
    }
    return null;
  }

  static String? validateEmail(String? value, {String message = "Invalid email address"}) {
    if (value == null || value.isEmpty) return message;

    final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$");

    if (!emailRegex.hasMatch(value)) {
      return message;
    }
    return null;
  }

  static String? validatePassword(String? value,
      {int minLength = 6, String message = "Password is too short"}) {
    if (value == null || value.length < minLength) {
      return message;
    }
    return null;
  }

  static String? validateNumber(String? value, {String message = "Invalid number"}) {
    if (value == null) return message;

    final numberRegex = RegExp(r"^[0-9]+$");
    if (!numberRegex.hasMatch(value)) return message;

    return null;
  }

  static String? validateMinLength(String? value, int length,
      {String? message}) {
    if (value == null || value.length < length) {
      return message ?? "Minimum length is $length characters";
    }
    return null;
  }

  static String? validateMaxLength(String? value, int length,
      {String? message}) {
    if (value != null && value.length > length) {
      return message ?? "Maximum length is $length characters";
    }
    return null;
  }
}
