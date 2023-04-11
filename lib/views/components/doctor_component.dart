import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_admin/model/doctor_model.dart';
import 'package:hospital_admin/views/pages/doctors_details.dart';

class doctorComponent extends StatelessWidget {
  final Doctor doctor;
  const doctorComponent({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: Get.width / 2,
        width: Get.width / 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            // onTap: () => Get.to(DoctorsDetails(doctor: doctor)),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Expanded(child: Image.network("$baseUrl/${hospital.image}")),
                    Text(
                      doctor.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //Text(hospital.price),
                    //Text(hospital.description)
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
