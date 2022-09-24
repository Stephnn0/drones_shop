//import 'package:meta/meta.dart';

class ImageData {
  final String id;
  final String imageUrl;

  const ImageData({
    required this.id,
    required this.imageUrl,
  });
}

// final List<String> imagesList1 = [
//   'assets/images/uno.jpg',
//   'assets/images/pitayaja.png',
//   'assets/images/redbull.jpg',
//   'assets/images/net.jpeg',
//   'assets/images/vegeta(2).png',
// ];

const imageList = [
  ImageData(
    id: 'id-001',
    imageUrl: 'assets/images1/a.jpg',
  ),
  ImageData(
    id: 'id-002',
    imageUrl: 'assets/images/lui.jpg',
  ),
  ImageData(
    id: 'id-003',
    imageUrl: 'assets/images/casa.jpg',
  ),
  ImageData(
    id: 'id-004',
    imageUrl: 'assets/images1/f.jpg',
  ),
  ImageData(
    id: 'id-005',
    imageUrl: 'assets/images1/q.jpg',
  ),
  // ImageData(
  //   id: 'id-006',
  //   imageUrl: 'assets/images/res.jpg',
  // ),
];

const imageList1 = [
  ImageData(
    id: 'id-001',
    imageUrl: 'assets/images/res.jpg',
  ),
  ImageData(
    id: 'id-002',
    imageUrl: 'assets/images1/m.jpg',
  ),
  ImageData(
    id: 'id-003',
    imageUrl: 'assets/images1/s.jpg',
  ),
  ImageData(
    id: 'id-004',
    imageUrl: 'assets/images1/aa.jpg',
  ),
  ImageData(
    id: 'id-005',
    imageUrl: 'assets/images1/cc.jpg',
  ),
];
