import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/productModel.dart';
import '../../../utils/colors.dart';

class ProductTile extends StatelessWidget {
  final ProductModel productModel;

  ProductTile(this.productModel);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.white,
      elevation: 5,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(productModel.image!),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: Text(
                    productModel.title!,
                    style: GoogleFonts.sansita(
                      color: Colorsapp.loginColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  '\$${productModel.price!}',
                  style: GoogleFonts.sansita(
                    color: Colorsapp.loginColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  '⭐⭐⭐${productModel.rating?.rate}',
                  style: GoogleFonts.sansita(
                    color: Colorsapp.rateColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 8,
            bottom: 8,
            child: IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colorsapp.primaryColor,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
