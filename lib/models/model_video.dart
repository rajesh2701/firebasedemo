import 'package:cloud_firestore/cloud_firestore.dart';

class VideoModel {
  String videoURL;
  int videoIndex;

  VideoModel({required this.videoURL, required this.videoIndex});

  factory VideoModel.fromDocumentSnapshot(
      {required DocumentSnapshot<Map<String, dynamic>> doc}) {
    return VideoModel(
        videoURL: doc.data()!['videoURL'],
        videoIndex: int.parse(doc.data()!['videoIndex'].toString()));
  }
}
