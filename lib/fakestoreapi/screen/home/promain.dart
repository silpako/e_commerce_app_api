import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller/productController.dart';
import '../../utils/colors.dart';
import '../details/productDetails.dart';
import '../popupmenu/about.dart';
import '../popupmenu/contact.dart';
import '../popupmenu/privacy.dart';
import 'Tile/productTile.dart';

class ProductMain extends StatelessWidget {
  Product_Controller productController = Get.put(Product_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 218, 218),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/animation/icon.png",
              width: 30,
              height: 50,
            ),
            Text(
              "SHOPIN",
              style: GoogleFonts.sansita(
                fontSize: 20,
              ),
            ),
          ],
        ),
        backgroundColor: Colorsapp.primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          Container(
            width: 30,
            height: 30,
            child: PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("About Us",
                      style: GoogleFonts.sansita(
                          fontSize: 12, color: Colors.black)),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Privacy",
                      style: GoogleFonts.sansita(
                          fontSize: 12, color: Colors.black)),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text("Contact Us",
                      style: GoogleFonts.sansita(
                          fontSize: 12, color: Colors.black)),
                  value: 3,
                ),
              ];
            }, onSelected: (value) {
              switch (value) {
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PrivacyPage()),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUsPage()),
                  );
                  break;
                default:
              }
            }),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colorsapp.primaryColor,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide:
                      BorderSide(color: Colors.grey), // Default border color
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide:
                      BorderSide(color: Colorsapp.primaryColor, width: 2.0),
                ),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                fillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: Obx(() {
            if (productController.isLoading.value) {
              return Center();
            } else {
              return GridView.builder(
                  itemCount: productController.productList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: .8),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () => Get.to(Product_Details(
                            productController.productList[index])),
                        child:
                            ProductTile(productController.productList[index]));
                  });
            }
          }))
        ],
      ),
    );
  }
}
