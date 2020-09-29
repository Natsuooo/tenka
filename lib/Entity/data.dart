class Data {
  int id;
  String name;
  String katakana1;
  String katakana2;
  String hiragana;
  String alphabet1;
  String alphabet2;
  String category;
  int danger;
  String enumber;
  String food;
  String content;

  bool isStar = false;

  Data({
    this.id,
    this.name,
    this.katakana1,
    this.katakana2,
    this.hiragana,
    this.alphabet1,
    this.alphabet2,
    this.category,
    this.danger,
    this.enumber,
    this.food,
    this.content,
  });

  factory Data.fromDatabaseJson(Map<String, dynamic> data) => Data(
        id: data['id'],
        name: data['name'],
        katakana1: data['katakana1'],
        katakana2: data['katakana2'],
        hiragana: data['hiragana'],
        alphabet1: data['alphabet1'],
        alphabet2: data['alphabet2'],
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
