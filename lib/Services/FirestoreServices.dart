import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreServices{

  final CollectionReference UserData = FirebaseFirestore.instance.collection("User");


  Future<void> createData(String username, String Email){
    return UserData.add({
      'username': username,
      'Email': Email,
}
    );
  }

}