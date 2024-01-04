class ValidationMixin {
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    // Regular expression for email validation
    String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regex = RegExp(emailPattern);
    if (!regex.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validationPwd(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    if (!RegExp(
            r'^(?=.*?[A-Za-z])(?=.*?[0-9])(?=.*?[!@#$%^&*()_+{}\[\]:;<>,./?]).{8,}$')
        .hasMatch(value)) {
      print(value);
      return 'Password must contain \nat least one special character \nand one digit';
    }
    return null;
  }
}
