import 'package:api_realm/entities/entities.dart';
import 'package:api_realm/screens/song_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbumScreen extends StatelessWidget {
  AlbumScreen({super.key, required this.albums});

  late List<Album> albums;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Album'),),
        body: ListView.builder(
      itemCount: albums.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.to(() => SongScreen(cdata: albums[index].cdata));
          },
          child: ListTile(
            title: Text(albums[index].title ?? 'Title not found'),
          ),
        );
      },
    ));
  }
}
