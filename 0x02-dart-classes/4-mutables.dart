class Password {
  String __password = '';

  // Making password private
  Password({required String password}) : __password = password;
  String get password => __password;
  set password(String password) {
    __password = password;
  }

  bool isValid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    }
    bool hasUpperCase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowerCase = password.contains(RegExp(r'[a-z]'));
    bool hasDigits = password.contains(RegExp(r'[0-9]'));

    return hasUpperCase && hasLowerCase && hasDigits;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }

}