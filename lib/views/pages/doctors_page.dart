import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_admin/views/pages/forms/add_edit_department_form.dart';
import 'package:hospital_admin/views/pages/forms/add_edit_doctor_form.dart';
import 'package:hospital_admin/views/pages/forms/add_edit_hospital_form.dart';

import '../components/My_button.dart';
import '../components/constants.dart';
import '../components/sidedrawer.dart';

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'DoctorsPage',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          backgroundColor: primaryColor),
      drawer: const SideDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              MyButton(
                onTap: () {
                  Get.bottomSheet(AddEditDoctorForm());
                },
                buttonName: 'Add Doctors',
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
