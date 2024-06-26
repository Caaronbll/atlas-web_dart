import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longestPal = "none";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > (longestPal.length - 2)) {
        longestPal = substring;
      }
    }
  }

  return longestPal;
}