import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:provider/provider.dart';
import 'package:roadize/screens/add_road/custom_gallery.dart';

class GridGallery extends StatefulWidget {
  @override
  _GridGalleryState createState() => _GridGalleryState();
}

class _GridGalleryState extends State<GridGallery> {
  List<AssetEntity> assets = [];

  @override
  void initState() {
    super.initState();
    _fetchAssets();
  }

  _fetchAssets() async {
    // Set onlyAll to true, to fetch only the 'Recent' album
    // which contains all the photos/videos in the storage
    final albums = await PhotoManager.getAssetPathList(onlyAll: true);
    final recentAlbum = albums.first;

    // Now that we got the album, fetch all the assets it contains
    final recentAssets = await recentAlbum.getAssetListRange(
      start: 0, // start at index 0
      end: 1000000, // end at a very big index (to get all the assets)
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
                    CustomGalleryState.imageFile = assets[index].file;
                  },
                  child:
                      Container(child: Image.memory(bytes, fit: BoxFit.cover)),
                );
              });
        },
      ),
    );
  }
}
