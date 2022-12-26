import 'dart:convert';
import 'dart:math';

import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String name;
  final String desc;
  final double price;
  final String thumbnail;

  const ProductModel({
    required this.name,
    required this.desc,
    required this.price,
    required this.thumbnail,
  });

  @override
  List<Object> get props => [name, desc, price, thumbnail];

  @override
  bool get stringify => true;

  static List<ProductModel> get mockProducts {
    return const [
      ProductModel(
          name: 'Mont',
          desc: 'Şişme',
          price: 899,
          thumbnail:
              'https://dfcdn.defacto.com.tr/7/X5376AZ_22WN_BK27_01_03.jpg'),
      ProductModel(
          name: 'Kazak',
          desc: 'Boğazlı',
          price: 149,
          thumbnail:
              'https://dfcdn.defacto.com.tr/7/R1127AZ_22WN_BE701_01_03.jpg'),
      ProductModel(
          name: 'Sweatshirt',
          desc: 'Fit Kapüşonlu İçi Yumuşak Tüylü',
          price: 299,
          thumbnail:
              'https://dfcdn.defacto.com.tr/7/Y5445AZ_22AU_TR393_01_03.jpg'),
    ];
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'desc': desc,
      'price': price,
      'thumbnail': thumbnail,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as double,
      thumbnail: map['thumbnail'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

extension GetRandomElementFromList<T> on List<T> {
  T get getRandomElement {
    final rand = Random();
    final randNumber = rand.nextInt(length);
    return elementAt(randNumber);
  }
}
