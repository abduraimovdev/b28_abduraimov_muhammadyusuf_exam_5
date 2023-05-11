Map<String, String> en = {
  "iphone": "Iphone",
  "macbook": "Macbook",
  "watches": "Watches",
  "apple": "Apple",
  "series": "Series 3",
  "title":
      "The Apple watch series 3 is designed \nfor people who want to keep their \nfitness game on point.",
  "price": r"$295.00",
  "bybutton": "PROCEED TO BUY",
  "addcard": "ADD TO CART",
};

enum Lang {
  iphone,
  macbook,
  watches,
  apple,
  series,
  title,
  price,
  bybutton,
  addcard,
}

extension LanguageEnum on Lang {
  String tr() {
    return en[name]!;
  }
}
