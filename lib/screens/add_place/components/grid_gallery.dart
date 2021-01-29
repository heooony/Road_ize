import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:provider/provider.dart';
import 'package:roadize/screens/add_road/custom_gallery.dart';
import 'package:roadize/size_config.dart';

import '../custom_gallery.dart';

class GridGallery extends StatefulWidget {
  final Function callback;
  GridGallery(this.callback);

  @override
  GridGalleryState createState() => GridGalleryState();
}

class GridGalleryState extends State<GridGallery> {
  List<AssetEntity> assets = [];
  List<int> photoIndex = [];
  List<Future<File>> photos = [];
  int number;

  @override
  void initState() {
    super.initState();
    _fetchAssets();
  }

  _fetchAssets() async {
    final albums = await PhotoManager.getAssetPathList(onlyAll: true);
    final recentAlbum = albums.first;

    final recentAssets = await recentAlbum.getAssetListRange(
      start: 0,
      end: 1000000,
    );

    // Update the state and notify UI
    setState(() => assets = recentAssets);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: GridView.builder(
        itemCount: assets.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          return FutureBuilder(
            future: assets[index].thumbData,
            builder: (context, snapshot) {
              final bytes = snapshot.data;
              if (bytes == null) return CircularProgressIndicator();
              return GestureDetector(
                onTap: () {
                  // this.widget.callback(assets[index].file);
                  setState(() {
                    if (photoIndex.contains(index) == true) {
                      number = photoIndex.indexOf(index);
                      photoIndex.remove(index);
                      photos.removeAt(number);
                    } else {
                      photoIndex.add(index);
                      photos.add(assets[index].file);
                    }
                    print(photoIndex);
                    print(photos);
                  });
                },
                child: Container(
                  child: Stack(
                    children: [
                      Image.memory(
                        bytes,
                        fit: BoxFit.cover,
                        color: photoIndex.contains(index) == true
                            ? Colors.white.withOpacity(0.2)
                            : null,
                        colorBlendMode: BlendMode.dstIn,
                      ),
                      if (photoIndex.contains(index) == true)
                        Center(
                            child: Text(
                          photoIndex.indexOf(index).toString(),
                          style: TextStyle(
                              fontSize: SizeConfig.fontSize,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ))
                      else
                        Container()
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
