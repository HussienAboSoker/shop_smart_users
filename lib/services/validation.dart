class FormValidator {
  static String? validatFullname(String? fullname) {
    if (fullname == null || fullname.isEmpty) {
      return 'Please enter your fullname';
    }
    if (fullname.length <= 3 || fullname.length >= 20) {
      return 'full name must be between 3 and 20 characters';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email address';
    }

    // Check if the email contains an "@" symbol
    if (!value.contains('@')) {
      return 'Email address must contain "@" symbol';
    }

    // Check if the email contains a "." character after "@"
    if (!value.substring(value.indexOf('@')).contains('.')) {
      return 'Email address must contain a domain name';
    }

    // Additional checks can be added based on your requirements

    // Email meets all criteria
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }

    // Check if the password length is less than 8 characters
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }

    // Check if the password contains at least one uppercase letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    // Check if the password contains at least one lowercase letter
    if (!value.contains(RegExp(r'[a-z]'))) {
      return 'Password must contain at least one lowercase letter';
    }

    // Check if the password contains at least one digit
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one digit';
    }

    // Check if the password contains at least one special character
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }

    // Password meets all criteria
    return null;
  }

  static String? validatRepetPassword({String? value, String? password}) {
    if (value != password) {
      return 'Password dont match';
    }
    return null;
  }
}
