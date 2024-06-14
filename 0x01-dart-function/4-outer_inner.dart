void outer(String name, String id) {
  
  String inner() {
    List<String> fullNameList = name.split(' ');
    String firstName = fullNameList[0];
    String lastName = fullNameList[1];
    String alias = lastName[0] + '.' + firstName;
    return 'Hello Agent $alias your id is $id';
  }

  print(inner());
}
