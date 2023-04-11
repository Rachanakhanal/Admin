// To parse this JSON data, do
//
//     final hospital = hospitalFromJson(jsonString);

import 'dart:convert';

Hospital hospitalFromJson(String str) => Hospital.fromJson(json.decode(str));

String hospitalToJson(Hospital data) => json.encode(data.toJson());

class Hospital {
  Hospital({
    required this.hospitalId,
    required this.name,
    required this.phone,
    required this.address,
  });

  String hospitalId;
  String name;
  String phone;
  String address;

  factory Hospital.fromJson(Map<String, dynamic> json) => Hospital(
        hospitalId: json["hospital_id"],
        name: json["name"],
        phone: json["phone"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "hospital_id": hospitalId,
        "name": name,
        "phone": phone,
        "address": address,
      };
}
