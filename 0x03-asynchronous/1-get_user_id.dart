import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String source = await fetchUserData();
  Map userDataMap = jsonDecode(source);
  
  return userDataMap['id'];
}