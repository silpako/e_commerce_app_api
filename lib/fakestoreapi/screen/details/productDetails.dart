import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller/productController.dart';
import '../../model/productModel.dart';
import '../../utils/colors.dart';

class Product_Details extends StatelessWidget {
  final ProductModel product;

  Product_Details(this.product);

  final Product_Controller controller = Get.find<Product_Controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(product.image!),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            product.title!,
            style: GoogleFonts.sansita(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              product.description!,
              style: GoogleFonts.sansita(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '\$${product.price!}',
                style: GoogleFonts.sansita(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '⭐⭐⭐${product.rating?.rate}',
                style: GoogleFonts.sansita(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 50, 198, 52),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Colorsapp.primaryColor,
                        width: 2,
                      ),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    "Add to Cart",
                    style: GoogleFonts.sansita(
                      fontSize: 15,
                      color: Colorsapp.primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colorsapp.primaryColor,
                  ),
                  child: Text(
                    "Buy Now",
                    style: GoogleFonts.sansita(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
