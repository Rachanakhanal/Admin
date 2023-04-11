import 'package:flutter/material.dart';

import '../components/constants.dart';
import '../components/sidedrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Row(
            children: [
              const SideDrawer(),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 1000,
                      color: primaryColor,
                      child: const Center(
                        child: Text(
                          "Dashboard",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            color: Color.fromARGB(255, 251, 251, 251),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
