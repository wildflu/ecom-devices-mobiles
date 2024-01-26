

import 'package:pcecommerce/data/models/gamme.dart';
import 'package:pcecommerce/data/models/type.dart';

class Device {
  String mark;
  String model;
  double price;
  String image;
  String ?description;
  int ram;
  int storage;
  Gamme gamme;
  String color;
  TypeDevice typeDevice;
  Device({
    required this.mark,
    required this.model,
    required this.price,
    required this.image,
    this.description,
    required this.ram,
    required this.storage,
    required this.gamme,
    required this.color,
    required this.typeDevice
  });
}