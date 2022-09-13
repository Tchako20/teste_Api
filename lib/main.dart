import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:listjson/product.model.dart';
import 'dart:convert';

import 'package:listjson/services.dart';

void main() async {
  runApp(View());
}

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  // List<String> Product = [];

  ProductServices services=ProductServices();
 @override
  void initState() {
    // TODO: implement initState
    services=ProductServices();
    super.initState(

    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: FutureBuilder<List<ProductModel>?>(
          future: services.getProducts(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Center(child: Text('carregando'));
            } else {
              return ListView.builder(
                itemCount: snapshot.data.lenght,
                itemBuilder: (context, indice) {
                  return ListTile(
                    title: Text('${snapshot.data[indice]}'),
                    onTap: () {
                      print(
                          'O produto selecionado foi ${snapshot.data[indice]}');
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}


// class Products {
//   final List products;

//   Products(this.products);
// }

// class Product {
//   final String produtoId;
//   final String produto;
//   final String endereco;
//   final String descricao;
//   final String imagem;
//   final int quantidade;
//   final double preco;

//   Product(this.produtoId, this.produto, this.endereco, this.descricao,
//       this.imagem, this.quantidade, this.preco);

//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(json['produto_id'], json['produto'], json['endereco'],
//         json['descricao'], json['imagem'], json['quantidade'], json['preco']);
//   }

//   Map<String, dynamic> toJson() => {
//         'produto_Id': this.produtoId,
//         'produto': this.produto,
//         'endereco': this.endereco,
//         'descricao': this.descricao,
//         'imagem': this.imagem,
//         'quantidade': this.quantidade,
//         'preco': this.preco,
//       };
// }
