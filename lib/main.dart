import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate_design_system/flutter_app_boilerplate_design_system.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: AppTheme.theme,
      home: Scaffold(
        body: Center(
          child: Container(
            child: StyledText('Pitote'),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}
