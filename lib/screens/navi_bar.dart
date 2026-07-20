import 'package:flutter/material.dart';
import 'package:gallery_app/screens/albums_screen2.dart';
import 'package:gallery_app/screens/pictures.dart';
import 'package:gallery_app/screens/shared_screen.dart';
import 'package:gallery_app/screens/stories.dart';
class GalleryAppNaviBar extends StatefulWidget {
  const GalleryAppNaviBar({super.key});
  @override
  State<GalleryAppNaviBar> createState() => _GalleryAppNaviBarState();
}
class _GalleryAppNaviBarState extends State<GalleryAppNaviBar> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    PicturesScreen(),
    AlbumScreen2(),
    StoriesScreen(),
    SharedScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
         backgroundColor: Colors.white,
         indicatorColor: Colors.black.withValues(alpha: 0.04),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.photo_library_rounded), 
          label: 'Pictures',
          ),
           NavigationDestination(
             icon: Icon(Icons.folder_copy_rounded),
            label: 'Albums',
          ),
           NavigationDestination(
            icon: Icon(Icons.auto_awesome_mosaic_rounded),
            label: 'Stories',
          ),
          NavigationDestination(
            icon: Icon(Icons.people_alt_rounded),
            label: 'Shared',
          ),
        ],
      ),
    );
  }
}
