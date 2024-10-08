class CategoryModel {
  String ? name;
  String ? image;

  CategoryModel({this.name, this.image});

  CategoryModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    name = map['name'];
    image = map['image'];
  }

  toJson() {
    return {
      'name': name,
      'image': image,
    };
  }
}


// class CategoryModel {
//   String name, image;
//
//   CategoryModel({required this.name, required this.image});
//
//   CategoryModel.fromJson(Map<dynamic, dynamic> map) {
//     if (map == null) {
//       return;
//     }
//     name = map['name'];
//     image = map['image'];
//   }
//
//   toJson() {
//     return {
//       'name': name,
//       'image': image,
//     };
//   }
// }


