class SingleApi {
  int? userId;
  int? id;
  String? title;
  String? body;

  SingleApi({this.userId, this.id, this.title, this.body});

  SingleApi.fromJson(Map<String, dynamic> map) {
    userId = map['userId'];
    id = map['id'];
    title = map['title'];
    body = map['body'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['userId'] = this.userId;
  //   data['id'] = this.id;
  //   data['title'] = this.title;
  //   data['body'] = this.body;
  //   return data;
  // }
}
