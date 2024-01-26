


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcecommerce/domain/controllers/settings_controller/settings_controller.dart';
import 'package:pcecommerce/presontation/components/change_theme.dart';
import 'package:pcecommerce/presontation/components/language_switcher.dart';
import 'package:pcecommerce/presontation/components/setting_component.dart';
import 'package:pcecommerce/presontation/components/settings_header_component.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationController>(
      init: NotificationController(),
      builder: (controller) {
        return ListView(
          children: [
            const SettingsHeaderComponent(),
            const SizedBox(height: 30,),
            const SettingComponent(label: 'Language',icon: Icons.language, widget: LanguageSwitcherComponent()),
            const SettingComponent(label: 'Theme',icon: Icons.mode_night_rounded, widget: ChangeThemeComponent()),
            ListTile(
              leading: controller.notificationStatus? const Icon(Icons.notifications_none_sharp):const Icon(Icons.notifications_off),
              title: const Text('Notification'),
              trailing: Switch(value: controller.notificationStatus, onChanged: (value) => controller.notificationSwitchStatus(),),
            )
          ],
        );
      }
    );
  }
}
