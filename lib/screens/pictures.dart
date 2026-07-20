import 'package:flutter/material.dart';
import 'package:gallery_app/gallerapp_data/photoapp_data.dart';
import 'package:gallery_app/gallery_app_widgets/custom_reusuable_header.dart';

class PicturesScreen extends StatefulWidget {
  const PicturesScreen({super.key});

  @override
  State<PicturesScreen> createState() => _PicturesScreenState();
}

class _PicturesScreenState extends State<PicturesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        
        physics: BouncingScrollPhysics(),
        slivers: 
        
      [GalleryAppBar(title: 'Pictures'),
         _buildMonthHeader(monthName: 'September'),
         _photoGrid(GalleryAppData.sepImages),
         _buildMonthHeader(monthName: 'August'),
         _photoGrid(GalleryAppData.augImages),
         _buildMonthHeader(monthName: 'July'),
         _photoGrid(GalleryAppData.julyImages),


    ]),
    );
  }
}

Widget _buildMonthHeader({required String monthName}) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: EdgeInsets.only(left: 20, bottom: 12, top: 24.0),
      child: Text(
        monthName,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w800,
          fontFamily: 'Satoshi',
        ),
      ),
    ),
  );
}

Widget _photoGrid(List<String> imageList) {
  return SliverPadding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    sliver: SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate((context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(imageList[index],
          fit: BoxFit.cover,),
        );
      }, childCount: imageList.length),
      
   ),
  );
}
