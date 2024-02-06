import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/models/catigorymodel.dart';

class AppContsants {
  static List banners = [
    ImagePath.banner1,
    ImagePath.banner2,
  ];
  static List<Catigorymodel> catigory = [
    Catigorymodel(name: "phone", image: ImagePath.mobiles),
    Catigorymodel(name: "book", image: ImagePath.book),
    Catigorymodel(name: "cosmetics", image: ImagePath.cosmetics),
    Catigorymodel(name: "electronics", image: ImagePath.electronics),
    Catigorymodel(name: "fashion", image: ImagePath.fashion),
    Catigorymodel(name: "pc", image: ImagePath.pc),
    Catigorymodel(name: "shapes", image: ImagePath.shapes),
    Catigorymodel(name: "whatch", image: ImagePath.watch),
  ];
}
