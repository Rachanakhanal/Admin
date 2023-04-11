import 'dart:convert';
import 'package:hospital_admin/model/hospital_model.dart';
import 'package:hospital_admin/utils/sharedprefs.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import '../utils/api.dart';
import '../views/components/constants.dart';

class HospitalController extends GetxController {
  var loading = false.obs;
  var hospital = <Hospital>[].obs;
  final AuthHospital authHospital = AuthHospital();
  var hospitalsDetails = <Hospital>[].obs;

  @override
  void onInit() async {
    super.onInit();
    var token_ = await authHospital.getToken();
    //getHospitalDetails(token_);
  }

  get() async {
    loading.value = true;
    var url = Uri.parse(GET_HOSPITALS_API);
    var token_ = await authHospital.getToken();
    var response = await http.get(url);
    loading.value = false;
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      if (jsonResponse["success"]) {
        var responseData = jsonResponse['data'];
        for (var i = 0; i < responseData.length; i++) {
          hospital.add(Hospital.fromJson(responseData[i]));
        }
        showMessage(title: "Success", message: jsonResponse["message"]);
      } else {
        showMessage(
            title: "Error", message: jsonResponse["message"], isSuccess: false);
      }
    }
  }

  // var response = await http.post(
  //       Uri.parse("http://192.168.1.212/DoctorAppointment_API/login.php"),
  //       body: cc(data));
  //   Map message = jsonDecode(response.body);

  addHospital(data) async {
    loading.value = true;
    // data['token'] = await authHospital.getToken();
    //print(data['token']);
    var url = Uri.parse(ADD_HOSPITALS_API);
    // await Future.delayed(const Duration(seconds: 3));
    var response = await http.post(url, body: json.encode(data));
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
}
