String? validator(String? val, String? type) {
  if (val == "" || val == null) {
    return "Please enter a value";
  }

  if (type == "text" && val == "") {
    return "Please enter a value";
  }

  if (type == "username" && !_isUsername(val)) {
    return "Please enter a correct username";
  }

  if (type == "phone" && !_isPhoneNumber(val)) {
    return "Please enter a correct phone number";
  }

  if (type == "email" && !_isEmail(val)) {
    return "Please enter a correct email";
  }

  RegExp passwordRegex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  if (type == "password" && !passwordRegex.hasMatch(val)) {
    return 'Please enter at least one uppercase letter, lowercase letter, digit, special character, and more than 8 characters';
  }

  return null;
}

bool _isUsername(String value) {
  // Implement your username validation logic here
  // For example, you might want to check if the username follows certain rules
  return true;
}

bool _isPhoneNumber(String value) {
  // Implement your phone number validation logic here
  // For example, you might want to check if the phone number has a valid format
  return true;
}

bool _isEmail(String value) {
  // Implement your email validation logic here
  // For example, you might want to check if the email has a valid format
  return true;
}
