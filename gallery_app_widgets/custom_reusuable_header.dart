import 'package:flutter/material.dart';

class GalleryAppBar extends StatelessWidget {
  final String title;
  const GalleryAppBar({super.key,
  required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 190,
      pinned: true,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.black,)),
               IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.black,))
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        titlePadding: EdgeInsets.only(bottom: 60, left: 20),
        background: const Align(
          alignment: Alignment.bottomCenter,
          // child: ,
        ),
      ),


    );
  }
}
