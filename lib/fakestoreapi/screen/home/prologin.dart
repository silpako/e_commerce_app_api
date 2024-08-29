import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../services/httpServices.dart';
import '../../utils/colors.dart';
import 'promain.dart';

class ProductLogin extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    final username = usernameController.text;
    final password = passwordController.text;
    final token = await HttpService.login(username, password);

    if (token != null) {
      Get.off(() => ProductMain());
    } else {
      Get.snackbar(
        'Error',
        'Invalid login credentials',
        colorText: Colorsapp.errorColor,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colorsapp.primaryColor,
              child: Image.asset(
                "assets/animation/icon.png",
                width: 40,
                height: 50,
              ),
            ),
            Text(
              "Login",
              style: GoogleFonts.sansita(
                  color: Colorsapp.loginColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Hi, Welcome back........ ",
                style: GoogleFonts.sansita(
                    color: Colorsapp.loginColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: usernameController,
              cursorColor: Colorsapp.primaryColor,
              decoration: InputDecoration(
                hintText: 'Username',
                hintStyle: GoogleFonts.sansita(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colorsapp.primaryColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colorsapp.primaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: passwordController,
              cursorColor: Colorsapp.primaryColor,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: GoogleFonts.sansita(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colorsapp.primaryColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colorsapp.primaryColor,
                  ),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: login,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colorsapp.primaryColor,
                minimumSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Login',
                style: GoogleFonts.sansita(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
