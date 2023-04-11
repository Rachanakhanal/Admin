import 'package:flutter/material.dart';
import 'package:hospital_admin/views/pages/appointments_page.dart';
import 'package:hospital_admin/views/pages/doctors_page.dart';
import '../pages/Departments_page.dart';
import '../pages/home.dart';

import '../pages/hospital_page.dart';
import '../pages/patients_page.dart';
import 'constants.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  //final authService = AuthService();
  //final authentication = Get.find<Authentication>();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Column(
            children: [
              Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    //border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                        fit: BoxFit.cover),
                  )),
              // child: Image.asset("assets/images/logo.png"),
              // Text("Admin")
            ],
          ),
          ListTile(
              leading: const Icon(Icons.home),
              iconColor: primaryColor,
              selectedColor: Colors.grey,
              title: const Text(
                'Dashboard',
                style: TextStyle(
                    fontWeight: FontWeight.w900, fontFamily: 'Roboto'),
              ),
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  )),
          ListTile(
            leading: const Icon(Icons.local_fire_department_sharp),
            iconColor: primaryColor,
            title: const Text(
              "Departments",
              style:
                  TextStyle(fontWeight: FontWeight.w900, fontFamily: 'Roboto'),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DepartmentsPage(),
                )),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            iconColor: primaryColor,
            title: const Text('Doctors',
                style: TextStyle(
                    fontWeight: FontWeight.w900, fontFamily: 'Roboto')),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DoctorsPage(),
                )),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            iconColor: primaryColor,
            title: const Text('Appointments',
                style: TextStyle(
                    fontWeight: FontWeight.w900, fontFamily: 'Roboto')),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AppointmentsPage(),
                )),
          ),
          ListTile(
              leading: const Icon(Icons.person),
              iconColor: primaryColor,
              title: const Text('Patients',
                  style: TextStyle(
                      fontWeight: FontWeight.w900, fontFamily: 'Roboto')),
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PatientsPage(),
                    ),
                  )),
          ListTile(
              leading: const Icon(Icons.home_filled),
              iconColor: primaryColor,
              title: const Text('Hospitals',
                  style: TextStyle(
                      fontWeight: FontWeight.w900, fontFamily: 'Roboto')),
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HospitalsPage(),
                    ),
                  )),
          const ListTile(
            leading: Icon(Icons.exit_to_app),
            iconColor: primaryColor,
            title: Text('Logout',
                style: TextStyle(
                    fontWeight: FontWeight.w900, fontFamily: 'Roboto')),
            //onTap: () => logout(),
          ),
        ],
      ),
    );
  }

  // logout() async {
  // await authentication.logout();
}
