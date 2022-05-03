import 'package:firebasedemo/screens/screens.dart';
import 'package:firebasedemo/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PrimaryButton(
                buttonTitle: 'Goto Images Screen',
                onPressed: () {
                  Get.to(() => const ScreenImageList());
                }),
            const SizedBox(
              height: 15,
            ),
            PrimaryButton(
                buttonTitle: 'Goto Video Player',
                onPressed: () {
                  Get.to(() => const ScreenVideoPlayer(
                        videoURL:
                            'https://firebasestorage.googleapis.com/v0/b/fire-demo-27.appspot.com/o/videos%2Fbigbuck.mp4?alt=media&token=23b2f3d2-0b57-4aaa-a863-f1168b640e6a',
                      ));
                })
          ],
        ),
      ),
    );
  }
}
