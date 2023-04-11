// To parse this JSON data, do
//
//     final department = departmentFromJson(jsonString);

import 'dart:convert';

Department departmentFromJson(String str) =>
    Department.fromJson(json.decode(str));

String departmentToJson(Department data) => json.encode(data.toJson());

class Department {
  Department({
    required this.departmentId,
    required this.name,
    required this.description,
    required this.hospitalId,
  });

  String departmentId;
  String name;
  String description;
  String hospitalId;

  factory Department.fromJson(Map<String, dynamic> json) => Department(
        departmentId: json["department_id"],
        name: json["name"],
        description: json["description"],
        hospitalId: json["hospital_id"],
      );

  Map<String, dynamic> toJson() => {
        "department_id": departmentId,
        "name": name,
        "description": description,
        "hospital_id": hospitalId,
      };
}
