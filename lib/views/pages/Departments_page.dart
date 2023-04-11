import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_admin/controller/department_controller.dart';
import 'package:hospital_admin/controller/hospital_controller.dart';
import 'package:hospital_admin/views/components/department_component.dart';
import '../components/My_button.dart';
import '../components/constants.dart';
import '../components/hospital_component.dart';
import '../components/sidedrawer.dart';
import 'forms/add_edit_hospital_form.dart';

class DepartmentsPage extends StatelessWidget {
  final DepartmentController departmentController =
      Get.put(DepartmentController());
  DepartmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Departments',
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
                buttonName: 'Add Department',
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                children: departmentController.department
                    .map((department) =>
                        DepartmentComponent(department: department))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
