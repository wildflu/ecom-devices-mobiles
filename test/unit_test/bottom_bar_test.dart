

import 'package:flutter_test/flutter_test.dart';
import 'package:pcecommerce/domain/controllers/app_controller/bottom_bar_controller.dart';

void main() {
  test('test the bottom bar navigation', () {
    BottomBarController bottomBarController = BottomBarController();
    expect(bottomBarController.currantPage , 0);
    bottomBarController.navigateTo(3);
    expect(bottomBarController.currantPage , 3);
  });
}