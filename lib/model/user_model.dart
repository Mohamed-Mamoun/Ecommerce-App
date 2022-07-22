class UserModel {
  String userId;
  String email;
  String name;
  String pic;

  UserModel({this.userId, this.email, this.name, this.pic});

  // Function To get data from json
  UserModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }

    userId = map['userId'];
    email = map['email'];
    name = map['name'];
    pic = map['pic'];
  }

  // Function To convert data To json
  toJson() {
    return {'userId': userId, 'email': email, 'name': name, 'pic': pic};
  }
}
