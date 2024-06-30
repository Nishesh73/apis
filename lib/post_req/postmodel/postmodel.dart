class TokenModel {
  String? token;

  TokenModel({this.token});

  TokenModel.fromJson(Map<String, dynamic> mapData) {
    token = mapData['token'];
  }

 
}