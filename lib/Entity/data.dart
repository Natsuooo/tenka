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
  String food;
  String note;
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
    this.food,
    this.note,
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
        food: data['food'],
        note: data['note'],
        content: data['content'],
      );

  void toggleStar() {
    isStar = !isStar;
  }
}
