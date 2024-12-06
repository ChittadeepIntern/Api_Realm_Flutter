import 'package:api_realm/controllers/tab_controller.dart';
import 'package:api_realm/entities/entities.dart';
import 'package:api_realm/screens/song_screen_tabs/types.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SongScreen extends StatelessWidget {
  const SongScreen({super.key, required this.album});

  final Album album;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Song"),
            bottom: TabBar(
                tabs: List.generate(album.cdata.length, (index) {
              return Tab(text: album.cdata[index].type);
            })),
          ),
          body: TabBarView(
            children: List.generate(album.cdata.length, (index) {
              return Types(cdata: album.cdata[index]);
            }),
          ),
        ));
  }
}
