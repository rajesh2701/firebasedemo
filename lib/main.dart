import 'package:firebasedemo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/bindings.dart';
import 'helpers/helpers.dart';
import 'screens/screens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await firebaseInitialization.then((value) {
    runApp(const FirebaseDemo());
  });
}

class FirebaseDemo extends StatelessWidget {
  const FirebaseDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Firebase Demo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      home: const ScreenHome(),
    );
  }
}
