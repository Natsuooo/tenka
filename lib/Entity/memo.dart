class Memo {
  int id;
  int dataId;
  String text;

  Memo({this.id, this.dataId, this.text});

  factory Memo.fromDatabaseJson(Map<String, dynamic> data) => Memo(
        id: data['id'],
        dataId: data['data_id'],
        text: data['text'],
      );

  Map<String, dynamic> toDatabaseJson() => {
        "id": this.id,
        "data_id": this.dataId,
        "text": this.text,
      };
}
