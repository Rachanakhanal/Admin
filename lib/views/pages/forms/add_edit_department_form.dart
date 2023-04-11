import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_admin/controller/hospital_controller.dart';
import '../../../controller/department_controller.dart';
import '../../components/My_button.dart';
import '../../components/constants.dart';
import '../../components/my_field.dart';

class AddEditDepartmentForm extends StatelessWidget {
  final String title;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _hospitalIdController = TextEditingController();
  final HospitalController hospitalController = Get.put(HospitalController());
  final DepartmentController departmentController =
      Get.put(DepartmentController());

  AddEditDepartmentForm({Key? key, this.title = "Add Hospital"})
      : super(key: key);

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
                                  controller: _nameController,
                                  labelText: 'Department Name',
                                  prefixIcon: const Icon(Icons.local_hospital),
                                ),
                              ),
                              SizedBox(
                                width: 350,
                                child: MyField(
                                  controller: _descriptionController,
                                  labelText: 'Phone',
                                  prefixIcon: const Icon(Icons.phone),
                                ),
                              ),
                              SizedBox(
                                width: 350,
                                child: MyField(
                                  controller: _hospitalIdController,
                                  labelText: 'hospitalId',
                                  prefixIcon: const Icon(Icons.location_city),
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: MyButton(
                                  onTap: () async {
                                    var data = {
                                      'name': _nameController.text,
                                      'description':
                                          _descriptionController.text,
                                      'hospitalId': _hospitalIdController.text
                                    };
                                    var isValidated =
                                        _formKey.currentState!.validate();
                                    if (isValidated) {
                                      DepartmentController.addDepartment(data);
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
