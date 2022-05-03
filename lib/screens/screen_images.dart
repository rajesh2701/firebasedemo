import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebasedemo/database/database.dart';
import 'package:firebasedemo/models/models.dart';
import 'package:firebasedemo/theme/theme.dart';
import 'package:firebasedemo/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ScreenImageList extends StatelessWidget {
  const ScreenImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return FutureBuilder(
        future: FireStoreDB.getImagesList(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return GridView.extent(
                  maxCrossAxisExtent: 200,
                  children: List.generate(snapshot.data!.length, (index) {
                    return _gridItem(snapshot.data![index]);
                  }));
            } else {
              return const ErrorLoadingData();
            }
          } else {
            return const CircularProgress();
          }
        });
  }

  Widget _gridItem(ImageModel imageModel) {
    return GridTile(
      footer: Center(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(imageModel.imageName,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColorsTheme.black)),
      )),
      child: Card(
          color: AppColorsTheme.cardColorWhite,
          elevation: 4,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Material(
            color: Colors.transparent,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CachedNetworkImage(
                    imageUrl: imageModel.imageURL,
                    placeholder: (context, url) => const Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Stack(
                        children: [
                          // PLAY ICON
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.info,
                              size: 20,
                              color: AppColorsTheme.accentColor,
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          )),
    );
  }
}
