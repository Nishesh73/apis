class CreateModel {
  String? name;
  String? job;
  String? id;
  String? createdAt;

  CreateModel({this.name, this.job, this.id, this.createdAt});

  CreateModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    job = json['job'];
    id = json['id'];
    createdAt = json['createdAt'];
  }


}