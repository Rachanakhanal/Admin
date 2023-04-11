import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_admin/views/pages/Departments_page.dart';
import 'package:hospital_admin/views/pages/department_details.dart';

import '../../model/department_model.dart';

class DepartmentComponent extends StatelessWidget {
  final Department department;
  const DepartmentComponent({super.key, required this.department});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: Get.width / 2,
        width: Get.width / 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => Get.to(DepartmentDetails(department: department)),
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
              // child: Column(
              //   children: [
              //    // Expanded(child: Image.network("$baseUrl/${service.image}")),
              //     Text(
              //       Department.name,
              //       style: const TextStyle(
              //         fontSize: 18,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     //Text(service.price),
              //     //Text(service.description)
              //   ],
              //  )
            ),
          ),
        ), //
      ),
    );
  }
}
