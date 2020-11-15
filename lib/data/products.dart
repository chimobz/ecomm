// Our demo Products
import 'package:shop_app/models/Product.dart';

List<Product> demoProducts = [
  Product(
    id: 1,
    discountPercent: 25.0,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    dateFin: 1594829147719,

     daysleft: 120,
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: description,
   // rating: 4.8,
    isFavorite: false,
    isPopular: true,
  ),
    Product(
    id: 110,
    daysleft: 12,
    discountPercent: 15.0,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],

    title: "Wireless Controller for PS4™",
    price: 70.000,
    description: description,
   // rating: 4.8,
    isFavorite: false,
    isPopular: true,
  ),
  Product(
    id: 2,
    discountPercent: 10.0,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
  
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: description,
    //rating: 4.1,
    isPopular: true,
    isFavorite: false
  ),
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
 
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
  //  rating: 4.1,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    // colors: [
    //   Color(0xFFF6625E),
    //   Color(0xFF836DB8),
    //   Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
   // rating: 4.1,
    isFavorite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
