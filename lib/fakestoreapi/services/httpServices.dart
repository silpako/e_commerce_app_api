import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/productModel.dart';

class HttpService {
  static const String baseUrl = 'https://fakestoreapi.com';

  // Function to login
  static Future<String?> login(String username, String password) async {
    final url = Uri.parse('$baseUrl/auth/login');
    final response = await http.post(url, body: {
      'username': username,
      'password': password,
    });

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['token'];
    } else {
      return null;
    }
  }

  // Function to fetch products
  static Future<List<ProductModel>> fetchProduct() async {
    final url = Uri.parse('$baseUrl/products');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var data = response.body;
      return productModelFromJson(data);
    } else {
      throw Exception('Failed to load products');
    }
  }
}
