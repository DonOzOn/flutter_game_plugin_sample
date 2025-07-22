import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:miniapp_plugin/miniapp_plugin_view.dart';
import 'miniapp_plugin_platform_interface.dart';

class MethodChannelMiniappPlugin extends MiniappPluginPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('miniapp_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  void openGameView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MiniappPluginView()),
    );
  }
}
