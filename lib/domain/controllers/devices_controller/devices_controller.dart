

import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:pcecommerce/data/models/device.dart';
import 'package:pcecommerce/domain/model/menu_marks.dart';
import 'package:pcecommerce/repositories/devices_repo/devices_repository.dart'   ;

class DevicesController extends GetxController {
  
  List<Device> devices = [];
  Map<String, List<Device>> ?devicesMark;
  DevicesRepository devicesRepository = DevicesRepository();

  splitMarkes(){
    devicesMark = groupBy(devicesRepository.getAllDevices(), (Device device) => device.mark);
  }

  onClickMark(MenuMark mark) {
    devices = devicesMark![mark.name]?? [];
    makeAllMarksInActive();
    mark.isActive = true;
    update();
  }

  makeAllMarksInActive() {
    for(MenuMark mark in marks) {
      mark.isActive = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    splitMarkes();
    getMarks();
    onClickMark(marks.first);
  }

  List<MenuMark> marks = [];
  getMarks() {
    for (var element in devicesMark!.keys.toList()){
      marks.add(MenuMark(name: element, isActive: false));
    }
    update();
  }


}