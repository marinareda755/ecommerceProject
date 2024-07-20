import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../ecoomercePlus/data/models/CartModel.dart';

class CartControl extends GetxController {
  var itemCartControl = <Cartmodel>[].obs;
  var counts = <int>[].obs;
  var count = 0.obs;

  late String mail;

  late SharedPreferences sharedPreferences;

  getShared() async {
    sharedPreferences = await SharedPreferences.getInstance();
    mail = sharedPreferences.getString('email').toString();
    print("object" + mail.toString());
  }

  @override
  void onInit() {
    itemCartControl.clear();
    fetchItem();
    super.onInit();
  }

  void fetchItem() async {
    counts.clear();
    await getShared();
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('addToCard')
        .where('user', isEqualTo: mail)
        .get();
    var itemList =
        snapshot.docs.map((doc) => Cartmodel.fromFirestore(doc)).toList();
    itemCartControl.assignAll(itemList);
    for (int i = 0; i > itemCartControl.length; i++) {
      counts.add(itemCartControl[i].count);
    }

    update();
  }

  void increment(int index) {
    counts[index]++;
  }

  void decrement(int index) {
    if (counts[index] > 0) {
      counts[index]--;
    }
  }

  void addToCart(int index) {
    increment(index);
  }
}
