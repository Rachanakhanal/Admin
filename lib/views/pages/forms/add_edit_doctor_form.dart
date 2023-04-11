import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_admin/controller/doctor_controller.dart';
import 'package:hospital_admin/controller/hospital_controller.dart';
import '../../components/My_button.dart';
import '../../components/constants.dart';
import '../../components/my_field.dart';

class AddEditDoctorForm extends StatelessWidget {
  final String title;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _doctorName = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _doctorCharge = TextEditingController();
  final TextEditingController hospital_id = TextEditingController();
  final TextEditingController department_id = TextEditingController();
  final DoctorController doctorController = Get.put(DoctorController());
  final HospitalController hospitalController = Get.put(HospitalController());

  AddEditDoctorForm({Key? key, this.title = "Add Doctor"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: 300,
                color: backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(title,
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800,
                                      color: primaryColor)),
                              const SizedBox(height: 40),
                              SizedBox(
                                width: 350,
                                child: MyField(
                                  controller: _doctorName,
                                  labelText: 'Doctor Name',
                                  prefixIcon: const Icon(Icons.local_hospital),
                                ),
                              ),
                              SizedBox(
                                width: 350,
                                child: MyField(
                                  controller: _phoneController,
                                  labelText: 'Phone',
                                  prefixIcon: const Icon(Icons.phone),
                                ),
                              ),
                              SizedBox(
                                width: 350,
                                child: MyField(
                                  controller: _doctorCharge,
                                  labelText: 'Doctor Charge',
                                  prefixIcon: const Icon(Icons.location_city),
                                ),
                              ),
                              SizedBox(
                                width: 350,
                                child: MyField(
                                  controller: hospital_id,
                                  labelText: 'Hospital Id',
                                  prefixIcon: const Icon(Icons.location_city),
                                ),
                              ),
                              SizedBox(
                                width: 350,
                                child: MyField(
                                  controller: department_id,
                                  labelText: 'Department Id',
                                  prefixIcon: const Icon(Icons.location_city),
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: MyButton(
                                  onTap: () async {
                                    var data = {
                                      'name': _doctorName.text,
                                      'phone': _phoneController.text,
                                      'Doctor Charge': _doctorCharge.text,
                                      'Hospital ID': hospital_id,
                                      'Department ID': department_id,
                                    };
                                    var isValidated =
                                        _formKey.currentState!.validate();
                                    if (isValidated) {
                                      doctorController.addDoctor(data);
                                    }
                                  },
                                  buttonName: 'Add',
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
