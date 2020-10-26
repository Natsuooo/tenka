class Memo {
  int id;
  String text;

  Memo({this.id, this.text});

  factory Memo.fromDatabaseJson(Map<String, dynamic> data) => Memo(
        id: data['id'],
        text: data['text'],
      );

  Map<String, dynamic> toDatabaseJson() => {
        "id": this.id,
        "text": this.text,
      };
}
