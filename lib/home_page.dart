import 'dart:math';

import 'package:flutter/material.dart';

const _colorMask = 0x00ffffff;

/// Main page for the app
class HomePage extends StatefulWidget {
  /// Default constructor
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _randomInstance = Random();

  var _color = Colors.white;

  int _generateColorValue() => _randomInstance.nextInt(_colorMask);

  void _onColorChange() {
    setState(() {
      _color = Color(_generateColorValue()).withOpacity(1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onColorChange,
      // on emulator when clicking with mouse around the screen very fast
      // color may not necessarily change.
      // this line fixes the issue.
      onTapCancel: _onColorChange,
      child: Scaffold(
        backgroundColor: _color,
        body: const Center(
          child: Text(
            'Hey There!',
          ),
        ),
      ),
    );
  }
}
