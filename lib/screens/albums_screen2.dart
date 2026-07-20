import 'package:flutter/material.dart';
import 'package:gallery_app/gallerapp_data/photoapp_data.dart';
import 'package:gallery_app/gallery_app_widgets/custom_reusuable_header.dart';

class AlbumScreen2 extends StatefulWidget {
  const AlbumScreen2({super.key});

  @override
  State<AlbumScreen2> createState() => _AlbumScreen2State();
}

class _AlbumScreen2State extends State<AlbumScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          GalleryAppBar(title: 'Albums'),
          SliverPadding(
            padding: EdgeInsets.only(
              top: 24.0,
              bottom: 40.0,
              right: 16.0,
              left: 16.0,
            ),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16, // Roomy horizontal gaps
                mainAxisSpacing: 20, // Vertical gaps between rows
                childAspectRatio: 0.78,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final folder = GalleryAppData.albumFolders1[index];
                  return AlbumCover(
                    name: folder['name'] ?? 'Unnamed Folder',
                    count: folder['count'] ?? '0 Photos',
                    imagePath: folder['image']  ?? folder['image'] ?? 'assets/images/img1.jpg',
                  );
                },
                childCount: GalleryAppData.albumFolders1.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget AlbumCover({
  required String name,
  required String count,
  required String imagePath,
}) {
  return Container(
    width: 130,
    margin: EdgeInsets.only(right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.grey.shade100,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          name,
          maxLines: 1,
          overflow: .ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w800,
            fontFamily: 'Satoshi',
          ),
        ),
        SizedBox(height: 6),
        Text(
          count,
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontFamily: 'GeneralSans',
          ),
        ),
      ],
    ),
  );
}
