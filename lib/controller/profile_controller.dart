
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:ecommerceproject/core/services/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';

abstract class ProfileController extends GetxController{
  logOut();
  pickImage();
  uploadImage();
  // getUserEmail();
// getUserName();


}
class ProfileControllerImp extends ProfileController{
  MyServices myServices=Get.find();
  File? imageFile ;
  final FirebaseStorage _storage=FirebaseStorage.instance;
  final _firestore=FirebaseFirestore.instance;
  // String ?userName;
  String ?userEmail;


  @override
  logOut() async {
    GoogleSignIn googleSignIn=GoogleSignIn();
    googleSignIn.disconnect();
    await FirebaseAuth.instance.signOut();
    // myServices.sharedPreferences.clear();
    myServices.sharedPreferences.setString('step','1' );
    myServices.sharedPreferences.remove('id');
    myServices.sharedPreferences.remove('email');
    myServices.sharedPreferences.remove('profileImageUrl');

    Get.offNamed(AppRoute.login);


  }

  @override
  pickImage() async {
    final ImagePicker picker=ImagePicker();
    XFile ? file= await picker.pickImage(source: ImageSource.gallery);
    imageFile=File(file!.path);
    update();

  }

  @override
  Future<void> uploadImage() async {
    if (imageFile == null) return;
    final fileName = imageFile!.path.split('/').last;
    final ref = _storage.ref().child('uploads/$fileName');
    await ref.putFile(imageFile!).then((TaskSnapshot taskSnapshot) async {
      final imageUrl = await taskSnapshot.ref.getDownloadURL();
      updateCurrentUser(imageUrl);
      myServices.sharedPreferences.setString('profileImageUrl', imageUrl);
    }).catchError((e) {
      print(e);
    });
    update();
  }
  Future<void> updateCurrentUser(String imageUrl) async {
    QuerySnapshot query = await _firestore.collection('user').where('uid', isEqualTo:  myServices.sharedPreferences.getString('id')).get();

    _firestore.collection('user').doc(query.docs[0].id).update({
      'image':imageUrl,
    });

  }

  // @override
  // getUserEmail() {
  //   final email = myServices.sharedPreferences.getString('email');
  //   final imageUrl = myServices.sharedPreferences.getString('profileImageUrl');
  //   if (email != null) {
  //     userEmail = email;
  //   } else {
  //     userEmail = 'No email found';
  //   }
  //   update();
  //   return userEmail;
  // }



}









