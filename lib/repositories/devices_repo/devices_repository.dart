

import 'package:pcecommerce/data/models/device.dart';
import 'package:pcecommerce/data/models/gamme.dart';
import 'package:pcecommerce/data/models/type.dart';
import 'package:pcecommerce/repositories/devices_repo/devices_interface.dart';

class DevicesRepository implements DeviceInterface{

  List<Device> devices = [];


  @override
  List<Device> getAllDevices() {
    List<Device> samsung = [
      Device(mark: "samsong", model: "M3", price: 33.2, image: 'assets/one.jpg', description: 'this new model next to M3 searis', ram: 13, storage: 252, gamme: Gamme.MOYEEN, color: 'Colors.red', typeDevice: TypeDevice.MOBILE),
      Device(mark: "samsong", model: "A3", price: 443.2, image: 'assets/two.jpg', description: 'A2 searis, new onw', ram: 2, storage: 52, gamme: Gamme.HIGH, color: 'Colors.blue', typeDevice: TypeDevice.MOBILE),
      Device(mark: "samsong", model: "S2", price: 353.2, image: 'assets/fore.jpg', description: 'gold one for you', ram: 4, storage: 352, gamme: Gamme.MOYEEN, color: 'Colors.green', typeDevice: TypeDevice.MOBILE),
      Device(mark: "samsong", model: "S20", price: 723.2, image: 'assets/profile.png', description: 'start new experience with S20', ram: 9, storage: 422, gamme: Gamme.LOW, color: 'Colors.yellow', typeDevice: TypeDevice.MOBILE),
      Device(mark: "samsong", model: "S ultra", price: 733.2, image: 'assets/fore.jpg', description: 'this new model next to ultra searis', ram: 2, storage: 232, gamme: Gamme.MOYEEN, color: 'Colors.amber', typeDevice: TypeDevice.MOBILE),
    ];

    List<Device> xiaomi = [
      Device(mark: "Xiaomi", model: "M3", price: 33.2, image: 'assets/one.jpg', description: 'this new model next to M3 searis', ram: 13, storage: 252, gamme: Gamme.MOYEEN, color: 'Colors.red', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Xiaomi", model: "A3", price: 443.2, image: 'assets/two.jpg', description: 'A2 searis, new onw', ram: 2, storage: 52, gamme: Gamme.HIGH, color: 'Colors.blue', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Xiaomi", model: "S2", price: 353.2, image: 'assets/fore.jpg', description: 'gold one for you', ram: 4, storage: 352, gamme: Gamme.MOYEEN, color: 'Colors.green', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Xiaomi", model: "S20", price: 723.2, image: 'assets/profile.png', description: 'start new experience with S20', ram: 9, storage: 422, gamme: Gamme.LOW, color: 'Colors.yellow', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Xiaomi", model: "S ultra", price: 733.2, image: 'assets/fore.jpg', description: 'this new model next to ultra searis', ram: 2, storage: 232, gamme: Gamme.MOYEEN, color: 'Colors.amber', typeDevice: TypeDevice.MOBILE),
    ];
    List<Device> wiko = [
      Device(mark: "Wiko", model: "M3", price: 33.2, image: 'assets/one.jpg', ram: 13, storage: 252, gamme: Gamme.MOYEEN, color: 'Colors.red', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Wiko", model: "A3", price: 443.2, image: 'assets/two.jpg', description: 'A2 searis, new onw', ram: 2, storage: 52, gamme: Gamme.HIGH, color: 'Colors.blue', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Wiko", model: "S2", price: 353.2, image: 'assets/fore.jpg', ram: 4, storage: 352, gamme: Gamme.MOYEEN, color: 'Colors.green', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Wiko", model: "S20", price: 723.2, image: 'assets/profile.png', description: 'start new experience with S20', ram: 9, storage: 422, gamme: Gamme.LOW, color: 'Colors.yellow', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Wiko", model: "S ultra", price: 733.2, image: 'assets/fore.jpg', description: 'this new model next to ultra searis', ram: 2, storage: 232, gamme: Gamme.MOYEEN, color: 'Colors.amber', typeDevice: TypeDevice.MOBILE),
    ];
    List<Device> iphone = [
      Device(mark: "Iphone", model: "M3", price: 33.2, image: 'assets/one.jpg', description: 'this new model next to M3 searis', ram: 13, storage: 252, gamme: Gamme.MOYEEN, color: 'Colors.red', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Iphone", model: "A3", price: 443.2, image: 'assets/two.jpg', description: 'A2 searis, new onw', ram: 2, storage: 52, gamme: Gamme.HIGH, color: 'Colors.blue', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Iphone", model: "S2", price: 353.2, image: 'assets/fore.jpg', description: 'gold one for you', ram: 4, storage: 352, gamme: Gamme.MOYEEN, color: 'Colors.green', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Iphone", model: "S20", price: 723.2, image: 'assets/profile.png', description: 'start new experience with S20', ram: 9, storage: 422, gamme: Gamme.LOW, color: 'Colors.yellow', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Iphone", model: "S ultra", price: 733.2, image: 'assets/fore.jpg', description: 'this new model next to ultra searis', ram: 2, storage: 232, gamme: Gamme.MOYEEN, color: 'Colors.amber', typeDevice: TypeDevice.MOBILE),
    ];
    List<Device> onePlus = [
      Device(mark: "OnePlus", model: "M3", price: 33.2, image: 'assets/one.jpg', description: 'this new model next to M3 searis', ram: 13, storage: 252, gamme: Gamme.MOYEEN, color: 'Colors.red', typeDevice: TypeDevice.MOBILE),
      Device(mark: "OnePlus", model: "A3", price: 443.2, image: 'assets/two.jpg', ram: 2, storage: 52, gamme: Gamme.HIGH, color: 'Colors.blue', typeDevice: TypeDevice.MOBILE),
      Device(mark: "OnePlus", model: "S2", price: 353.2, image: 'assets/fore.jpg', ram: 4, storage: 352, gamme: Gamme.MOYEEN, color: 'Colors.green', typeDevice: TypeDevice.MOBILE),
      Device(mark: "OnePlus", model: "S20", price: 723.2, image: 'assets/profile.png', description: 'start new experience with S20', ram: 9, storage: 422, gamme: Gamme.LOW, color: 'Colors.yellow', typeDevice: TypeDevice.MOBILE),
      Device(mark: "OnePlus", model: "S ultra", price: 733.2, image: 'assets/fore.jpg', description: 'this new model next to ultra searis', ram: 2, storage: 232, gamme: Gamme.MOYEEN, color: 'Colors.amber', typeDevice: TypeDevice.MOBILE),
    ];
    List<Device> infinix = [
      Device(mark: "Infinix", model: "M3", price: 33.2, image: 'assets/one.jpg', description: 'this new model next to M3 searis', ram: 13, storage: 252, gamme: Gamme.MOYEEN, color: 'Colors.red', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Infinix", model: "A3", price: 443.2, image: 'assets/two.jpg', description: 'A2 searis, new onw', ram: 2, storage: 52, gamme: Gamme.HIGH, color: 'Colors.blue', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Infinix", model: "S2", price: 353.2, image: 'assets/fore.jpg', ram: 4, storage: 352, gamme: Gamme.MOYEEN, color: 'Colors.green', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Infinix", model: "S20", price: 723.2, image: 'assets/profile.png', description: 'start new experience with S20', ram: 9, storage: 422, gamme: Gamme.LOW, color: 'Colors.yellow', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Infinix", model: "S ultra", price: 733.2, image: 'assets/fore.jpg', description: 'this new model next to ultra searis', ram: 2, storage: 232, gamme: Gamme.MOYEEN, color: 'Colors.amber', typeDevice: TypeDevice.MOBILE),
    ];
    List<Device> nokia = [
      Device(mark: "Nokia", model: "M3", price: 33.2, image: 'assets/one.jpg', description: 'this new model next to M3 searis', ram: 13, storage: 252, gamme: Gamme.MOYEEN, color: 'Colors.red', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Nokia", model: "A3", price: 443.2, image: 'assets/two.jpg', ram: 2, storage: 52, gamme: Gamme.HIGH, color: 'Colors.blue', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Nokia", model: "S2", price: 353.2, image: 'assets/fore.jpg', description: 'gold one for you', ram: 4, storage: 352, gamme: Gamme.MOYEEN, color: 'Colors.green', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Nokia", model: "S20", price: 723.2, image: 'assets/profile.png', ram: 9, storage: 422, gamme: Gamme.LOW, color: 'Colors.yellow', typeDevice: TypeDevice.MOBILE),
      Device(mark: "Nokia", model: "S ultra", price: 733.2, image: 'assets/fore.jpg', description: 'this new model next to ultra searis', ram: 2, storage: 232, gamme: Gamme.MOYEEN, color: 'Colors.amber', typeDevice: TypeDevice.MOBILE),
    ];

    return nokia + infinix + onePlus + iphone + samsung + xiaomi + wiko;


  }
  

  
}