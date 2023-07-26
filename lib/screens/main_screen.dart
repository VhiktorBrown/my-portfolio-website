import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:victors_portfolio/utils/constants.dart';

import '../components/drawer_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Row(
          children: [
            Expanded(
              flex: 2,
                child: DrawerMenu(),
            ),
            Expanded(
              flex: 7,
                child: Container(
                  color: Colors.blue,)
            ),
          ],
        ),
      ),
    );
  }
}


