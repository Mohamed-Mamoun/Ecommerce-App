import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/model/user_model.dart';

class Firestore_Services {
  final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  // Function To add User To Database
  Future addUserToFireStore(UserModel userModel) async {
    _userCollection.doc(userModel.userId).set(userModel.toJson());
  }
}
