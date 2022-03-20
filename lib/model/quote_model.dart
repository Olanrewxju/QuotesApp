// ignore_for_file: prefer_collection_literals

class QuoteModel {
  String? text;
  String? author;

  QuoteModel({this.text, this.author});

  QuoteModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['text'] = text;
    data['author'] = author;
    return data;
  }
}
