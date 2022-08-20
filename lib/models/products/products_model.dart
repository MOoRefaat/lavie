import 'package:json_annotation/json_annotation.dart';
part 'products_model.g.dart';
@JsonSerializable()
class ProductsModel {
  String? type;
  String? message;
  List<ProductData>? data;

  ProductsModel({this.type, this.message, this.data});

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductsModelToJson(this);
}
@JsonSerializable()
class ProductData {
  String? productId;
  String? name;
  String? description;
  String? imageUrl;
  String? type;
  int? price;
  bool? available;
  Seed? seed;
  Plant? plant;
  Tool? tool;

  ProductData(
      {this.productId,
        this.name,
        this.description,
        this.imageUrl,
        this.type,
        this.price,
        this.available,
        this.seed,
        this.plant,
        this.tool});

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
  Map<String, dynamic> toJson() => _$ProductDataToJson(this);

}
@JsonSerializable()
class Seed {
  String? seedId;
  String? name;
  String? description;
  String? imageUrl;

  Seed({this.seedId, this.name, this.description, this.imageUrl});

  factory Seed.fromJson(Map<String, dynamic> json) =>
      _$SeedFromJson(json);
  Map<String, dynamic> toJson() => _$SeedToJson(this);
}
@JsonSerializable()
class Plant {
  String? plantId;
  String? name;
  String? description;
  String? imageUrl;
  int? waterCapacity;
  int? sunLight;
  int? temperature;

  Plant(
      {this.plantId,
        this.name,
        this.description,
        this.imageUrl,
        this.waterCapacity,
        this.sunLight,
        this.temperature});

  factory Plant.fromJson(Map<String, dynamic> json) =>
      _$PlantFromJson(json);
  Map<String, dynamic> toJson() => _$PlantToJson(this);
}
@JsonSerializable()
class Tool {
  String? toolId;
  String? name;
  String? description;
  String? imageUrl;

  Tool({this.toolId, this.name, this.description, this.imageUrl});
  factory Tool.fromJson(Map<String, dynamic> json) =>
      _$ToolFromJson(json);
  Map<String, dynamic> toJson() => _$ToolToJson(this);
}