import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebasedemo/controllers/controllers.dart';

AppController appController = AppController.instance;
final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;