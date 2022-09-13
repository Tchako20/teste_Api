class ProductModel {
  String id;
  String name;
  String about;
  String address;
  String company;

  ProductModel(
    this.id,
    this.name,
    this.about,
    this.address,
    this.company,
  );
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(json['id'], json['name'], json['about'],
        json['address'], json['company']);
  }

  Map<String, dynamic> toJson() => {
        'produto_Id': this.id,
        'produto': this.name,
        'endereco': this.about,
        'descricao': this.address,
        'imagem': this.company,
      };
}


// List<Product> products = [];

//     dados.forEach((elemento) {
//       print(elemento);

//       Product product = Product(
//         elemento['produto_id'],
//         elemento['produto'],
//         elemento['endereco'],
//         elemento['descricao'],
//         elemento['imagem'],
//         int.parse(elemento['quantidade']),
//         double.parse(elemento['preco']),
//       );

//       products.add(product);
//     });
//     return products;
//   }