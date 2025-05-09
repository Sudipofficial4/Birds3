import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of images
    final List<String> imageList = [
      'assets/Satellite.jpg',
      'assets/blueearth.jpg',
      'assets/BIRDS3.jpg',
      'assets/Earth.jpg',
      'assets/Himalayan.jpg',
      'assets/overjapan.jpg',
      'assets/oversrilanka.jpg',
      'assets/Srilanka_v3.jpg',
      'assets/V_Launch_1.jpg',
      'assets/Himalayan.jpg',
      'assets/overjapan.jpg',
      'assets/oversrilanka.jpg',
      'assets/Srilanka_v3.jpg',
      'assets/V_Launch_1.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GALLERY',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: imageList.length ~/ 2,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImageCard(imageList[index * 2]),
                _buildImageCard(imageList[index * 2 + 1]),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildImageCard(String imagePath) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          width: 150,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
