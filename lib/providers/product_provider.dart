import 'package:flutter/material.dart';
import 'package:shop_smart_users/models/product_model.dart';
import 'package:uuid/uuid.dart';

class ProductProvider extends ChangeNotifier {
 // ProductModel? productModel;

  ProductModel? productById({required String productId}) {
    if (products
        .where(
          (element) => element.productId == productId,
        )
        .isEmpty) {
      return null;
    }
    return products.firstWhere(
      (element) => element.productId == productId,
    );
  }

  List<ProductModel> searchByName(
      {required String productname,
      required List<ProductModel> passproductlist}) {
    List<ProductModel> listOfProductSearch = passproductlist
        .where(
          (element) => element.productTitle.toLowerCase().contains(
                productname.toLowerCase(),
              ),
        )
        .toList();
    return listOfProductSearch;
  }

  List<ProductModel> productByCaticory({required String catigoryname}) {
    List<ProductModel> listOfCaticory = getproducts
        .where(
          (element) => element.productCategory.toLowerCase().contains(
                catigoryname.toLowerCase(),
              ),
        )
        .toList();
    return listOfCaticory;
  }

  //create a getter for products
  List<ProductModel> get getproducts {
    return products;
  }
  //list of product

  List<ProductModel> products = [
    ProductModel(
        //generate random id
        productId: const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle: "Apple iPhone 13 with FaceTime (128GB) - Blue",
        productDescription: '''
   6.1-inch Super Retina XDR display Cinematic mode adds shallow depth of field and shifts focus automatically in your videos
Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording
12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording
A15 Bionic chip for lightning-fast performance
''',
        productImage:
            'https://btech.com/media/catalog/product/c/d/cddff4da834f457574cad8ee597bf15fec65fd2d72afe7cecd27cf1a41cdedfb.jpeg?width=560&height=560&store=ar&image-type=image',
        productPrice: "134",
        productQuantity: '10',
        productCategory: 'phone'),
    ProductModel(
        //generate random id
        productId: const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle: '''
 Apple iPad (9th Generation): with A13 Bionic chip, 10.2-inch Retina Display, 64GB, Wi-Fi, 12MP front/8MP Back Camera, Touch ID, All-Day Battery Life – Silver

''',
        productDescription: '''
WHY IPAD — All the essentials in the most affordable iPad, with a beautiful 10.2-inch Retina display, powerful A13 Bionic chip, and an Ultra Wide front camera with Center Stage. Work, play, create, learn, stay connected, and more.
IPADOS + APPS — iPadOS makes iPad more productive, intuitive, and versatile. With iPadOS, run multiple apps at once, use Apple Pencil to write in any text field with Scribble, and edit and share photos. iPad comes with essential apps like Safari, Messages, and Keynote, with over a million more apps available on the App Store.
FAST WI-FI CONNECTIVITY — Fast Wi-Fi keeps you connected at home, work, school, or wherever you go with your iPad.
PERFORMANCE AND STORAGE — The A13 Bionic chip gives you the graphics performance you need. And with all-day battery life, iPad is perfect for playing immersive games and more. Choose from 64GB or 256GB storage options.
APPLE PENCIL AND SMART KEYBOARD — Apple Pencil (1st generation) transforms iPad into an immersive drawing canvas and the world’s best note‑taking device. The Smart Keyboard features a comfortable typing experience and folds into a slim, lightweight cover for protection. Accessories sold separately
10.2-INCH RETINA DISPLAY — With incredible detail and vivid colors, it’s perfect for watching movies or drawing your next masterpiece. True Tone adjusts the display to the color temperature of the room to make viewing comfortable in any light.
UNLOCK AND PAY WITH TOUCH ID — Touch ID is built into the top button, so you can use your fingerprint to unlock your iPad, sign in to apps, and make payments securely with Apple Pay.
''',
        productImage:
            'https://m.media-amazon.com/images/I/61PnHlc0HCL.__AC_SX300_SY300_QL70_ML2_.jpg',
        productPrice: "400",
        productQuantity: '10',
        productCategory: 'phone'),
    ProductModel(
        //generate random id
        productId: const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle:
            'One Day, Life Will Change: A story of love and inspiration to win life Best Gift',
        productDescription: '''
               "One Day, Life Will Change: A Story of Love and Inspiration to Win Life**" is a heartfelt and uplifting novel that explores the transformative power of love and perseverance. The story follows the journey of two protagonists who, through their shared struggles and mutual support, discover the strength to overcome life's challenges and find happiness. This emotionally resonant tale is not just about romance, but also about personal growth and resilience. It serves as a reminder that, even in the darkest times, hope and inspiration can lead to a brighter future. Perfect as a gift, this book is a testament to the enduring human spirit and the profound impact of love on our lives.
''',
        productImage:
            'https://i.ebayimg.com/images/g/TTMAAOSwYBVkkoru/s-l960.webp',
        productPrice: "12",
        productQuantity: '10',
        productCategory: 'book'),
    ProductModel(
        //generate random id
        productId: const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle: "Samsung Galaxy S23 Ultra 5G 256GB 8GB RAM W/SPEN",
        productDescription:
            "Galaxy S23\n6.1” Flat FHD+ Dynamic AMOLED 2X\nInfinity-O Display (2340 x 1080)\n425ppi\nHDR10+ certified\nnfinity-O Display: a near bezel-less, full-frontal screen\nMeasured diagonally, Galaxy S23's screen size is 6.1\nin the full rectangle and 5.9\n with accounting for the rounded corners, Galaxy S23+'s screen size is 6.6 in the full rectangle and 6.4 with accounting for the rounded corners and Galaxy S23 Ultra's screen size is 6.8 in the full rectangle and 6.8 with accounting for the rounded corners; actual viewable area is less due to the rounded corners and camera hole",
        productImage:
            'https://i.ebayimg.com/images/g/LGAAAOSwBq9lqOaT/s-l960.jpg',
        productPrice: "1500",
        productQuantity: '10',
        productCategory: 'phone'),
    ProductModel(
        //generate random id
        productId: const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle: "Samsung Galaxy S23 Ultra 5G 256GB 8GB RAM W/SPEN",
        productDescription:
            "Galaxy S23\n6.1” Flat FHD+ Dynamic AMOLED 2X\nInfinity-O Display (2340 x 1080)\n425ppi\nHDR10+ certified\nnfinity-O Display: a near bezel-less, full-frontal screen\nMeasured diagonally, Galaxy S23's screen size is 6.1\nin the full rectangle and 5.9\n with accounting for the rounded corners, Galaxy S23+'s screen size is 6.6 in the full rectangle and 6.4 with accounting for the rounded corners and Galaxy S23 Ultra's screen size is 6.8 in the full rectangle and 6.8 with accounting for the rounded corners; actual viewable area is less due to the rounded corners and camera hole",
        productImage:
            'https://i.ebayimg.com/images/g/LGAAAOSwBq9lqOaT/s-l960.jpg',
        productPrice: "1500",
        productQuantity: '10',
        productCategory: 'phone'),
    ProductModel(
        //generate random id
        productId: const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle: "Samsung Galaxy S23 Ultra 5G 256GB 8GB RAM W/SPEN",
        productDescription:
            "Galaxy S23\n6.1” Flat FHD+ Dynamic AMOLED 2X\nInfinity-O Display (2340 x 1080)\n425ppi\nHDR10+ certified\nnfinity-O Display: a near bezel-less, full-frontal screen\nMeasured diagonally, Galaxy S23's screen size is 6.1\nin the full rectangle and 5.9\n with accounting for the rounded corners, Galaxy S23+'s screen size is 6.6 in the full rectangle and 6.4 with accounting for the rounded corners and Galaxy S23 Ultra's screen size is 6.8 in the full rectangle and 6.8 with accounting for the rounded corners; actual viewable area is less due to the rounded corners and camera hole",
        productImage:
            'https://i.ebayimg.com/images/g/LGAAAOSwBq9lqOaT/s-l960.jpg',
        productPrice: "1500",
        productQuantity: '10',
        productCategory: 'phones'),
    ProductModel(
        //generate random id
        productId: const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle:
            "Apple Watch Series 9 GPS 45mm Pink Aluminium Case with Light Pink Sport Band – S/M",
        productDescription: '''
           Brand: Apple
Color: light pink
Display size: 45mm
Housing material: Aluminium
Wireless: Bluetooth, GPS, UWB, WIFI
Os: Apple watchOS
Battery life (max.): 18 hours

Availability: In stock
SKU: MR9G3QA/A
Tags: Apple, Apple Watch, Smart Watch, Smartwatches
 ''',
        productImage:
            'https://meststores.com/wp-content/uploads/2024/01/Apple-_Watch-_Series-_9-_GPS-_45mm_-Pink_-Aluminium-_Case-_with-_Light-_Pink-_Sport-_Band_-_SM-MEST-stores-best-online-shop-egypt1-2.webp',
        productPrice: "200",
        productQuantity: '10',
        productCategory: 'whatch'),
  ];
}
