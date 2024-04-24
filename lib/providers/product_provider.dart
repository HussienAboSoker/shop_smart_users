import 'package:flutter/material.dart';
import 'package:shop_smart_users/models/product_model.dart';
import 'package:uuid/uuid.dart';

class ProductProvider extends ChangeNotifier {
  
  //create a getter for products
  List<ProductModel> get getproducts {
    return products;
  } 
  //list of product

   List<ProductModel> products = [
    ProductModel(
      //generate random id
        productId:const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle: "Samsung Galaxy S23 Ultra 5G 256GB 8GB RAM W/SPEN",
        productDescription:
                    "Galaxy S23\n6.1” Flat FHD+ Dynamic AMOLED 2X\nInfinity-O Display (2340 x 1080)\n425ppi\nHDR10+ certified\nnfinity-O Display: a near bezel-less, full-frontal screen\nMeasured diagonally, Galaxy S23's screen size is 6.1\nin the full rectangle and 5.9\n with accounting for the rounded corners, Galaxy S23+'s screen size is 6.6 in the full rectangle and 6.4 with accounting for the rounded corners and Galaxy S23 Ultra's screen size is 6.8 in the full rectangle and 6.8 with accounting for the rounded corners; actual viewable area is less due to the rounded corners and camera hole",

        productImage: 
                    'https://i.ebayimg.com/images/g/LGAAAOSwBq9lqOaT/s-l960.jpg',
           
        productPrice: 
                          "134\$",
        
        productQuantity: '10',
        productCategory: 'phone'),
    
  ProductModel(
      //generate random id
        productId:const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle: "Samsung Galaxy S23 Ultra 5G 256GB 8GB RAM W/SPEN",
        productDescription:
                    "Galaxy S23\n6.1” Flat FHD+ Dynamic AMOLED 2X\nInfinity-O Display (2340 x 1080)\n425ppi\nHDR10+ certified\nnfinity-O Display: a near bezel-less, full-frontal screen\nMeasured diagonally, Galaxy S23's screen size is 6.1\nin the full rectangle and 5.9\n with accounting for the rounded corners, Galaxy S23+'s screen size is 6.6 in the full rectangle and 6.4 with accounting for the rounded corners and Galaxy S23 Ultra's screen size is 6.8 in the full rectangle and 6.8 with accounting for the rounded corners; actual viewable area is less due to the rounded corners and camera hole",

        productImage: 
                    'https://i.ebayimg.com/images/g/LGAAAOSwBq9lqOaT/s-l960.jpg',
           
        productPrice: 
                          "134\$",
        
        productQuantity: '10',
        productCategory: 'phone'),
    
  ProductModel(
      //generate random id
        productId:const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle: "Samsung Galaxy S23 Ultra 5G 256GB 8GB RAM W/SPEN",
        productDescription:
                    "Galaxy S23\n6.1” Flat FHD+ Dynamic AMOLED 2X\nInfinity-O Display (2340 x 1080)\n425ppi\nHDR10+ certified\nnfinity-O Display: a near bezel-less, full-frontal screen\nMeasured diagonally, Galaxy S23's screen size is 6.1\nin the full rectangle and 5.9\n with accounting for the rounded corners, Galaxy S23+'s screen size is 6.6 in the full rectangle and 6.4 with accounting for the rounded corners and Galaxy S23 Ultra's screen size is 6.8 in the full rectangle and 6.8 with accounting for the rounded corners; actual viewable area is less due to the rounded corners and camera hole",

        productImage: 
                    'https://i.ebayimg.com/images/g/LGAAAOSwBq9lqOaT/s-l960.jpg',
           
        productPrice: 
                          "134\$",
        
        productQuantity: '10',
        productCategory: 'phone'),
    
  ProductModel(
      //generate random id
        productId:const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle: "Samsung Galaxy S23 Ultra 5G 256GB 8GB RAM W/SPEN",
        productDescription:
                    "Galaxy S23\n6.1” Flat FHD+ Dynamic AMOLED 2X\nInfinity-O Display (2340 x 1080)\n425ppi\nHDR10+ certified\nnfinity-O Display: a near bezel-less, full-frontal screen\nMeasured diagonally, Galaxy S23's screen size is 6.1\nin the full rectangle and 5.9\n with accounting for the rounded corners, Galaxy S23+'s screen size is 6.6 in the full rectangle and 6.4 with accounting for the rounded corners and Galaxy S23 Ultra's screen size is 6.8 in the full rectangle and 6.8 with accounting for the rounded corners; actual viewable area is less due to the rounded corners and camera hole",

        productImage: 
                    'https://i.ebayimg.com/images/g/LGAAAOSwBq9lqOaT/s-l960.jpg',
           
        productPrice: 
                          "134\$",
        
        productQuantity: '10',
        productCategory: 'phone'),
    
  ProductModel(
      //generate random id
        productId:const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle: "Samsung Galaxy S23 Ultra 5G 256GB 8GB RAM W/SPEN",
        productDescription:
                    "Galaxy S23\n6.1” Flat FHD+ Dynamic AMOLED 2X\nInfinity-O Display (2340 x 1080)\n425ppi\nHDR10+ certified\nnfinity-O Display: a near bezel-less, full-frontal screen\nMeasured diagonally, Galaxy S23's screen size is 6.1\nin the full rectangle and 5.9\n with accounting for the rounded corners, Galaxy S23+'s screen size is 6.6 in the full rectangle and 6.4 with accounting for the rounded corners and Galaxy S23 Ultra's screen size is 6.8 in the full rectangle and 6.8 with accounting for the rounded corners; actual viewable area is less due to the rounded corners and camera hole",

        productImage: 
                    'https://i.ebayimg.com/images/g/LGAAAOSwBq9lqOaT/s-l960.jpg',
           
        productPrice: 
                          "134\$",
        
        productQuantity: '10',
        productCategory: 'phone'),
    
  ProductModel(
      //generate random id
        productId:const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle: "Samsung Galaxy S23 Ultra 5G 256GB 8GB RAM W/SPEN",
        productDescription:
                    "Galaxy S23\n6.1” Flat FHD+ Dynamic AMOLED 2X\nInfinity-O Display (2340 x 1080)\n425ppi\nHDR10+ certified\nnfinity-O Display: a near bezel-less, full-frontal screen\nMeasured diagonally, Galaxy S23's screen size is 6.1\nin the full rectangle and 5.9\n with accounting for the rounded corners, Galaxy S23+'s screen size is 6.6 in the full rectangle and 6.4 with accounting for the rounded corners and Galaxy S23 Ultra's screen size is 6.8 in the full rectangle and 6.8 with accounting for the rounded corners; actual viewable area is less due to the rounded corners and camera hole",

        productImage: 
                    'https://i.ebayimg.com/images/g/LGAAAOSwBq9lqOaT/s-l960.jpg',
           
        productPrice: 
                          "134\$",
        
        productQuantity: '10',
        productCategory: 'phone'),
    
  ProductModel(
      //generate random id
        productId:const Uuid().v4(),
        //productTitle: "Apple iPhone 13 128GB",
        productTitle: "Samsung Galaxy S23 Ultra 5G 256GB 8GB RAM W/SPEN",
        productDescription:
                    "Galaxy S23\n6.1” Flat FHD+ Dynamic AMOLED 2X\nInfinity-O Display (2340 x 1080)\n425ppi\nHDR10+ certified\nnfinity-O Display: a near bezel-less, full-frontal screen\nMeasured diagonally, Galaxy S23's screen size is 6.1\nin the full rectangle and 5.9\n with accounting for the rounded corners, Galaxy S23+'s screen size is 6.6 in the full rectangle and 6.4 with accounting for the rounded corners and Galaxy S23 Ultra's screen size is 6.8 in the full rectangle and 6.8 with accounting for the rounded corners; actual viewable area is less due to the rounded corners and camera hole",

        productImage: 
                    'https://i.ebayimg.com/images/g/LGAAAOSwBq9lqOaT/s-l960.jpg',
           
        productPrice: 
                          "134\$",
        
        productQuantity: '10',
        productCategory: 'phone'),
    
 
  ];


}