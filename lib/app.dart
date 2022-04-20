import 'package:background_color_changer/home_page.dart';
import 'package:flutter/material.dart';

/// Application widget.
/// Contains MaterialApp configuration and basic routing info
class App extends StatelessWidget {
  /// Default constructor
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Background Color Changer',
      home: HomePage(),
    );
  }
}
