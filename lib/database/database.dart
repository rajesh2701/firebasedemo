import 'package:firebasedemo/helpers/helpers.dart';
import 'package:firebasedemo/models/models.dart';

class FireStoreDB {
  
  // GET IMAGE LIST
  static Future<List<ImageModel>> getImagesList() async {
    final images = <ImageModel>[];

    await firebaseFirestore.collection('images').get().then((imageList) {
      for (var element in imageList.docs) {
        final ch = ImageModel.fromDocumentSnapshot(doc: element);
        images.add(ch);
      }
      return images;
    });
    return images;
  }
}
