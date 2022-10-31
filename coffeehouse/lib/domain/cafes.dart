class Cafes {
  late final String imagem;
  late final String cafe;
  late final double preco;

  Cafes({
    required this.imagem,
    required this.cafe,
    required this.preco,
  });

  Cafes.fromJson(Map<String, dynamic> json){
    cafe = json['title'];
    imagem = json['cafe_image'];
    preco = json['price'];
  }

  Map<String, Object?> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = cafe;
    data['cafe_image'] = imagem;
    data['price'] = preco;

    return data;
  }
}