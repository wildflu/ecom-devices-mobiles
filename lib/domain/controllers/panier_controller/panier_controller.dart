
import 'package:get/get.dart';
import 'package:pcecommerce/data/models/device.dart';
import 'package:pcecommerce/repositories/devices_repo/devices_repository.dart';

class PanierController extends GetxController{

  DevicesRepository devicesRepository = DevicesRepository();
  List<Device> myBag = [];
  List<int> counts =  [1,2,3,4,5,6,7,8,9, 10,20];
  int activeStep = 0;
  setActiveStep(int active){
    activeStep = active; 
    update();
  }
  List<Device> getBagDevices() {
    myBag = devicesRepository.getAllDevices();
    return myBag.getRange(4, 8).toList();
  }

  double devicePriceXCount(int count, double price){
    return count * price;
  }
  @override
  void onInit() {
    super.onInit();
    getBagDevices();
  }
}