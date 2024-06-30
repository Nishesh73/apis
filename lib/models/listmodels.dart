class ListOJModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  ListOJModel({this.userId, this.id, this.title, this.body});

  ListOJModel.fromJson(Map<String, dynamic> map) {
    userId = map['userId'];
    id = map['id'];
    title = map['title'];
    body = map['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}