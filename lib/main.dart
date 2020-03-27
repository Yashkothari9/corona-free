import 'package:cora_free/Registeration.dart';
import 'package:cora_free/login_page.dart';
import 'package:flutter/material.dart';

import 'products.dart';


class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

void main() => runApp(Registration());