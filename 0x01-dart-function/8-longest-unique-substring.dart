import 'dart:math';

String longestUniqueSubstring(String str) {
  int maxLength = 0;
  String longestSubstr = "";
  Map<String, int> charIndexMap = {};

  int start = 0;

  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];

    if (charIndexMap.containsKey(currentChar)) {
      start = max(start, charIndexMap[currentChar]! + 1);
    }

    charIndexMap[currentChar] = end;

    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      longestSubstr = str.substring(start, end + 1);
    }
  }

  return longestSubstr;
}