void main(List<String> args) {
  List<String> words = ["mator", "odam", "it"];
  MyWords myWords = MyWords(list: words);
  myWords.addNewWord("'oxshadi");
  // print(myWords.longestCommonPrefix());
  // print(words);
}

class MyWords {
  List<String> _list;

  MyWords._(this._list);
  factory MyWords({required List<String> list}) {
    if (list.isEmpty) {
      return throw Exception("This is List Empty");
    }
    return MyWords._(list);
  }
  List<String> get list => _list;

  void addNewWord(String word) {
    if (word.length < 2) {
      throw Exception("This is word small Length : 2");
    }
    _list.add(word);
  }

  String longestCommonPrefix() {
    if (_list.isEmpty) {
      return "";
    }
    int prefixNum = 100;
    for (final item in _list) {
      int prefix = 0;
      for (int i = 0; i <= _list[0].length; i++) {
        if (i == item.length) {
          break;
        }
        if (list[0][i] == item[i]) {
          prefix++;
        }
      }
      if (prefix == 0) {
        return "";
      } else {
        prefixNum = prefixNum >= prefix ? prefix : prefixNum;
      }
    }
    return _list[0].substring(0,prefixNum);
  }

  MyWords copyWith(List<String>? list) {
    return MyWords._(list ?? _list);
  }

  @override
  String toString() {
    return "MyWords{list : $_list}";
  }

  @override
  noSuchMethod(Invocation invocation) {
    return invocation.memberName;
  }

  @override
  int get hashCode => _list.hashCode;

  @override
  bool operator ==(Object other) {
    return (other is MyWords) && other._list == _list;
  }
}
