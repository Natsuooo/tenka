class Data {
  int id;
  String name;
  String katakana;
  String hiragana;
  String alphabet;
  String category;
  int danger;
  String enumber;
  String food;
  String content;

  bool isStar = false;

  Data({
    this.id,
    this.name,
    this.katakana,
    this.hiragana,
    this.alphabet,
    this.category,
    this.danger,
    this.enumber,
    this.food,
    this.content,
  });

  factory Data.fromDatabaseJson(Map<String, dynamic> data) => Data(
        id: data['id'],
        name: data['name'],
        katakana: data['katakana'],
        hiragana: data['hiragana'],
        alphabet: data['alphabet'],
        category: data['category'],
        danger: data['danger'],
        enumber: data['enumber'],
        food: data['food'],
        content: data['content'],
      );

  void toggleStar() {
    isStar = !isStar;
  }
}
