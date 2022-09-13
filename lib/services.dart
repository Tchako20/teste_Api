import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:listjson/product.model.dart';

class ProductServices {
  Future<List<ProductModel>?> getProducts() async {
    try {
      Uri uri = Uri.parse(
          'https://api.json-generator.com/templates/PUVM7yAEp6xE/data?access_token=3n9vpvx98fprd6j9vylpuw0c3rgans4r6c5inyn5');
      print(uri);

      var response = await http.get(uri);
      List<ProductModel> dados = json.decode(response.body);

      return dados;
    } catch (e) {
      print(e);
    
    }
    ;
  }
}
