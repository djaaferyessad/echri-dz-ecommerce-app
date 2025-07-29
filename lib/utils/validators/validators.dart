
class EValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty)
      return 'Email is required';


    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value)) {
      return 'Invalid email format';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return "password must be at least 6 characters";
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "password must contain at least one uppercase letter";
    }
    if (!value.contains(RegExp(r'!@#\$%^&*_-+=<>?'))) {
      return "password must contain at least one special character";
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    if (value.length != 10) {
      return 'Invalid phone number';
    }
    return null;
  }
}
