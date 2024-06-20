import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/models/catigorymodel.dart';

class AppContsants {
  static List banners = [
    ImagePath.banner1,
    ImagePath.banner2,
  ];
  static List<Catigorymodel> catigory = [
    Catigorymodel(
      id: ImagePath.mobiles,
      name: "phone",
      image: ImagePath.mobiles,
    ),
    Catigorymodel(id: ImagePath.book, name: "book", image: ImagePath.book),
    Catigorymodel(
        id: ImagePath.cosmetics, name: "cosmetics", image: ImagePath.cosmetics),
    Catigorymodel(
        id: ImagePath.electronics,
        name: "electronics",
        image: ImagePath.electronics),
    Catigorymodel(
        id: ImagePath.fashion, name: "fashion", image: ImagePath.fashion),
    Catigorymodel(id: ImagePath.pc, name: "pc", image: ImagePath.pc),
    Catigorymodel(
        id: ImagePath.shapes, name: "shapes", image: ImagePath.shapes),
    Catigorymodel(id: ImagePath.watch, name: "whatch", image: ImagePath.watch),
  ];
}
