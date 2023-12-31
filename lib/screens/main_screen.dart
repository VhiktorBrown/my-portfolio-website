
import 'package:flutter/material.dart';
import 'package:victors_portfolio/responsive.dart';
import 'package:victors_portfolio/utils/constants.dart';

import '../components/drawer_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context) ? null : AppBar(
        backgroundColor: bgColor,
        leading: Builder(
          builder: (context) =>
            IconButton(
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
              ),
            ),
        )
      ),
      drawer: const DrawerMenu(),
      body: Container(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 10,),
            if(Responsive.isDesktop(context))
              Expanded(
                flex: 2,
                  child: DrawerMenu(),
              ),
            SizedBox(width: 20),
            Expanded(
              flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                    ],
                  ),
                )
            ),
            SizedBox(width: 10,),
          ],
        ),
      ),
    );
  }
}


