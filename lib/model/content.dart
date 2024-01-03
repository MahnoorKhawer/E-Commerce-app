
import 'package:ui_development/config/assets.dart';

class GalleryContent {
  final int id;
  final String hintText;
  final String imgPath;
  final String heading;
  final int price;

  GalleryContent({
    required this.id,
    required this.imgPath,
    required this.hintText,
    required this.heading,
    required this.price,
  });
}

// Dem0 Pets

List<GalleryContent> demoGallery = [
  GalleryContent(
    id: 1,
    imgPath: ImageAssets.image,
    hintText: "Dog",
    heading: 'Heading',
    price: 334,
  ),
  GalleryContent(
    id: 2,
    imgPath: ImageAssets.image3,
    hintText: "Cat",
    heading: 'Heading',
    price: 432,
  ),
  GalleryContent(
    id: 3,
    imgPath: ImageAssets.image4,
    hintText: "Hams",
    heading: 'Heading',
    price: 111,
  ),
  GalleryContent(
    id: 4,
    imgPath: ImageAssets.image22,
    hintText: "Snkaes",
    heading: 'Heading',
    price: 232,
  ),
  GalleryContent(
    id: 5,
    imgPath: ImageAssets.image4,
    hintText: "Parrots",
    heading: 'Heading',
    price: 213,
  ),
  GalleryContent(
    id: 6,
    imgPath: ImageAssets.image55,
    hintText: "Rabbits",
    heading: 'Heading',
    price: 232,
  ),
  GalleryContent(
    id: 5,
    imgPath: ImageAssets.image4,
    hintText: "Parrots",
    heading: 'Heading',
    price: 442,
  ),
  GalleryContent(
    id: 6,
    imgPath: ImageAssets.image55,
    hintText: "Rabbits",
    heading: 'Heading',
    price: 123,
  ),
];