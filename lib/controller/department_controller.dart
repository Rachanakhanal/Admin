import 'dart:convert';
import 'package:get/get.dart';
import 'package:hospital_admin/model/department_model.dart';
import 'package:hospital_admin/model/doctor_model.dart';
import 'package:hospital_admin/utils/api.dart';
import 'package:hospital_admin/utils/sharedprefs.dart';
import 'package:hospital_admin/views/pages/forms/add_edit_department_form.dart';
import 'package:http/http.dart' as http;

import '../views/components/constants.dart';

class DepartmentController extends GetxController {
  var loading = false.obs;
  var selectedDepartment =
      Department(departmentId: "", name: "", description: "", hospitalId: "")
          .obs;

  //getting the Department details by creating model
  var department = <Department>[].obs;

  @override
  void onInit() {
    super.onInit();
    getDepartment();
    getDepartment();
  }

  final AuthDepartment authDepartment = AuthDepartment();

  //GET categories from database
  getDepartment() async {
    var url = Uri.parse(GET_DEPARTMENTS_API);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body); //as Map<String, dynamic>;
      if (jsonResponse["success"]) {
        var responseData = jsonResponse['data'];
        for (var i = 0; i < responseData.length; i++) {
          department.add(Department.fromJson(responseData[i]));
        }
        selectedDepartment.value = department.value[0];
        print(department);
        Get.back();
        showMessage(title: "Success", message: jsonResponse["message"]);
      } else {
        showMessage(
            title: "Error", message: jsonResponse["message"], isSuccess: false);
      }
    }
  }

  static void addDepartment(Map<String, String> data) {}
}

addDepartment(data) async {
  var loading;
  loading.value = true;
  // data['token'] = await authHospital.getToken();
  //print(data['token']);
  var url = Uri.parse(ADD_DEPARTMENTS_API);
  // await Future.delayed(const Duration(seconds: 3));
  var response = await http.post(url, body: data);
  loading.value = false;
  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
    if (jsonResponse["success"]) {
      Get.back();
      showMessage(title: "Success", message: jsonResponse["message"]);
    } else {
      showMessage(
          title: "Error", message: jsonResponse["message"], isSuccess: false);
    }
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
