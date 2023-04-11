import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_admin/controller/hospital_controller.dart';
import '../components/My_button.dart';
import '../components/constants.dart';
import '../components/hospital_component.dart';
import '../components/sidedrawer.dart';
import 'forms/add_edit_hospital_form.dart';

class HospitalsPage extends StatelessWidget {
  final HospitalController hospitalController = Get.put(HospitalController());
  HospitalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Hospitals',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'poppins',
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
                  Get.to(AddEditHospitalForm());
                },
                buttonName: 'Add Hospital',
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                children: hospitalController.hospital
                    .map((hospital) => HospitalComponent(hospital: hospital))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
