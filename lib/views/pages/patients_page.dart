import 'package:flutter/material.dart';

import '../components/constants.dart';
import '../components/sidedrawer.dart';

class PatientsPage extends StatelessWidget {
  const PatientsPage({super.key});

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
                          "Patients",
                          style: TextStyle(
                            fontFamily: 'Roboto',
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
