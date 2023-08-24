// 正規表現を使って<@{文字列}>の形式を置き換える関数
String removeMention(String text) =>
    text.replaceAll(RegExp(r'<@[^>]+>\n?'), '');
