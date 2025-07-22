import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:miniapp_plugin/gamer/gamer.dart';
import 'package:miniapp_plugin/gamer/keyboard.dart';
import 'package:miniapp_plugin/generated/l10n.dart';
import 'package:miniapp_plugin/miniapp_plugin.dart';
import 'package:miniapp_plugin/panel/page_portrait.dart';

class MiniappPluginView extends StatefulWidget {
  const MiniappPluginView({super.key});

  @override
  State<MiniappPluginView> createState() => _MiniappPluginViewState();
}

const screenBorderWidth = 3.0;

const backgroundColor = Color(0xffefcc19);

class _MiniappPluginViewState extends State<MiniappPluginView> {
  final TextEditingController _taskController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tetris',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop(); // hoặc xử lý riêng nếu cần
              },
            ),
            centerTitle: true,
            title: const Text(
              'Miniapp Plugin',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
          ),
          body: const Game(child: KeyboardController(child: PagePortrait()))),
    );
  }

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }
}
