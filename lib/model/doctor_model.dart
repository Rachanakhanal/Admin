// To parse this JSON data, do
//
//     final doctor = doctorFromJson(jsonString);

import 'dart:convert';

Doctor doctorFromJson(String str) => Doctor.fromJson(json.decode(str));

String doctorToJson(Doctor data) => json.encode(data.toJson());

class Doctor {
  Doctor({
    required this.doctorId,
    required this.name,
    required this.phone,
    required this.doctorCharge,
    required this.hospitalId,
    required this.departmentId,
  });

  String doctorId;
  String name;
  String phone;
  String doctorCharge;
  String hospitalId;
  String departmentId;

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
        doctorId: json["doctor_id"],
        name: json["name"],
        phone: json["phone"],
        doctorCharge: json["doctor_charge"],
        hospitalId: json["hospital_id"],
        departmentId: json["department_id"],
      );

  Map<String, dynamic> toJson() => {
        "doctor_id": doctorId,
        "name": name,
        "phone": phone,
        "doctor_charge": doctorCharge,
        "hospital_id": hospitalId,
        "department_id": departmentId,
      };
}
