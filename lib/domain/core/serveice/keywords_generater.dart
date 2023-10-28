List<String> getKeywords(String value) {
  final keywords = <String>[];
  var spString = '';
  final splitedStringList = value.split('');

  for (final element in splitedStringList) {
    keywords.add(spString += element.replaceAll(' ', '').toLowerCase());
  }
  return keywords;
}
