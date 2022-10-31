class Polly{
  int? id;
  String? foto;
  String? nome;
  String? aux;
  String? volume;
  String? preco;
  String? ingredientes;

  Polly({this.id, this.foto, this.nome, this.aux, this.volume, this.preco, this.ingredientes});

  Polly.fromJson(Map<String, dynamic> json){
    id = json['id'];
    foto = json['foto'];
    nome = json['nome'];
    aux = json['aux'];
    volume = json['volume'];
    preco = json['preco'];
    ingredientes = json['ingredientes'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['foto'] = foto;
    data['nome'] = nome;
    data['aux'] = aux;
    data['volume'] = volume;
    data['preco'] = preco;
    data['ingredientes'] = ingredientes;
    return data;
  }
}
