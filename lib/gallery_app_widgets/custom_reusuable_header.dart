import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'quick_action_row.dart';

class GalleryAppBar extends StatelessWidget {
  final String title;
  const GalleryAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 160,
      pinned: true,
      title: Text(
        title,

        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: false,

      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, color: Colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert, color: Colors.black),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        // title: Text(
        //   title,

        //   style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        // ),
        // centerTitle: false,
        // titlePadding: EdgeInsets.only(bottom: 90, left: 20, ),
        background: Column(
          mainAxisAlignment: .end,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: .spaceAround,

                children: [
                  QuickActionRow(
                    icon: Icons.play_circle_filled_rounded,
                    text: 'Videos',
                    onTap: () {},
                  ),
                  QuickActionRow(
                    icon: Icons.favorite_rounded ,
                    text: 'favourites',
                    onTap: () {},
                  ),
                  QuickActionRow(
                    icon: Icons.delete_outline_rounded,
                    text: 'Trash',
                    onTap: () {},
                  ),
                  QuickActionRow(
                    icon: CupertinoIcons.sparkles ,
                    text: 'suggested',
                    onTap: () {},
                  ),
                  QuickActionRow(
                    icon: Icons.phone_android_rounded,
                    text: 'screenshots',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
