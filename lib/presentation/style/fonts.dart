Map<String, String> font = {
  "poppins" : "poppins",
};

enum Font {
  poppins,

}

extension LanguageEnum on Font {
  String ts() {
    return font[name]!;
  }
}
