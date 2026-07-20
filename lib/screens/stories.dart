import 'package:flutter/material.dart';
import 'package:gallery_app/gallerapp_data/photoapp_data.dart';

class StoriesScreen extends StatefulWidget {
  const StoriesScreen({super.key});

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            title: Text(
              'Stories',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: false,
            toolbarHeight: 60,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_a_photo_outlined),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 5,vertical:10 ),
            sliver: SliverList.builder(
              itemCount: GalleryAppData.storiesList1.length,
              itemBuilder: (context, index) {
                final story = GalleryAppData.storiesList1[index];
                
                  return StoryCoverCard(
                     imagePath: story['imagePath'] as String,
                     mainText: story['mainText'] as String,
                      subText: story['subText'] as String,

                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
class StoryCoverCard extends StatelessWidget {
  final String imagePath;
  final String mainText;
  final String subText;

  const StoryCoverCard({
    super.key,
    required this.imagePath,
    required this.mainText,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04), 
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
          ],
          image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(mainText, style: const TextStyle(
              color: Colors.white, fontSize: 24,
              letterSpacing: 0.3, fontWeight: FontWeight.w700)),
            const SizedBox(height: 4),
            Text(subText, style: TextStyle(
              color: Colors.white.withValues(alpha: 0.8),
              fontWeight: FontWeight.w500, fontSize: 19)),
          ],
        ),
      ),
    );
  }
}