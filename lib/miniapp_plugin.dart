import 'package:flutter/material.dart';

import 'miniapp_plugin_platform_interface.dart';

export 'miniapp_plugin_view.dart';

class MiniappPlugin {
  Future<String?> getPlatformVersion() {
    return MiniappPluginPlatform.instance.getPlatformVersion();
  }

  void openGame(BuildContext context) {
    MiniappPluginPlatform.instance.openGameView(context);
  }

  static Future<String?> get platformVersion {
    return MiniappPluginPlatform.instance.getPlatformVersion();
  }
}
