import 'package:flutter/material.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'miniapp_plugin_method_channel.dart';

abstract class MiniappPluginPlatform extends PlatformInterface {
  MiniappPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static MiniappPluginPlatform _instance = MethodChannelMiniappPlugin();

  static MiniappPluginPlatform get instance => _instance;

  static set instance(MiniappPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  void openGameView(BuildContext context) {
    throw UnimplementedError('getPlatformView() has not been implemented.');
  }
}
