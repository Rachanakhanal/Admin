// import 'package:flutter/material.dart';
// import 'package:hospital_admin/model/doctor_model.dart';
// import 'package:hospital_admin/model/hospital_model.dart';
// import '../components/constants.dart';

// class DoctorsDetails extends StatelessWidget {
//   final Doctor doctor;
//   const DoctorsDetails({Key? key, required this.doctor}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(doctor.name),
//         backgroundColor: primaryColor,
//         actions: [
//           Container(
//             padding: const EdgeInsets.only(right: 60),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Column(
//             children: [
//               // Image.network("$baseUrl/${service.image}", height: 200),
//               const SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 5,
//                       blurRadius: 7,
//                       offset: const Offset(0, 3), // changes position of shadow
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Align(
//                               alignment: Alignment.center,
//                               child: Text(doctor.name,
//                                   style: const TextStyle(
//                                       fontSize: 26,
//                                       fontWeight: FontWeight.bold))),
//                           Align(
//                             alignment: Alignment.center,
//                             child: Text(" ${doctor.charge}",
//                                 style: const TextStyle(
//                                     fontSize: 26,
//                                     color: Colors.red,
//                                     fontWeight: FontWeight.bold)),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Column(
//                         children: [
//                           const Align(
//                             alignment: Alignment.centerLeft,
//                             child: Text(
//                               "Description",
//                               style: TextStyle(
//                                 fontSize: 20,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 15,
//                           ),
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: Text(doctor.phone,
//                                 style: const TextStyle(
//                                     fontSize: 20,
//                                     color: Color.fromARGB(255, 143, 137, 137))),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
