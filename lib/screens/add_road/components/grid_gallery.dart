import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:provider/provider.dart';
import 'package:roadize/screens/add_road/custom_gallery.dart';

class GridGallery extends StatefulWidget {
  Function callback;
  GridGallery(this.callback);

  @override
  GridGalleryState createState() => GridGalleryState();
}

class GridGalleryState extends State<GridGallery> {
  List<AssetEntity> assets = [];

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
                  this.widget.callback(assets[index].file);
                },
                child: Container(
                  child: Image.memory(bytes, fit: BoxFit.cover),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
