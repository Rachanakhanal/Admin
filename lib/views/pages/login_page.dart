import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_admin/views/pages/home.dart';
import '../components/My_button.dart';
import '../components/constants.dart';
import '../components/my_field.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Form(
                key: formKey,
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Container(
                        height: 500,
                        width: 900,
                        color: backgroundColor,
                        child: Row(
                          children: [
                            SizedBox(
                                height: 400,
                                width: 450,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/logo.png'),
                                          fit: BoxFit.fill)),
                                )),
                            Container(
                              color: const Color.fromARGB(255, 233, 238, 241),
                              width: 450,
                              child: Column(children: [
                                const SizedBox(
                                  height: 140,
                                ),
                                const Text(
                                  'Welcome!',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                    color: Color(0xff1c1919),
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                MyField(
                                  controller: emailController,
                                  labelText: 'Email',
                                  prefixIcon: const Icon(Icons.email),
                                  myTextValidator: (value) {
                                    if (!value.toString().contains("@")) {
                                      return "Email is not valid";
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  child: MyField(
                                    controller: passwordController,
                                    labelText: 'Password',
                                    obscureText: true,
                                    myTextValidator: (value) {
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                  width: 200,
                                  child: MyButton(
                                    buttonName: 'Login',
                                    onTap: () => Get.to(const HomePage()),
                                  ),
                                )
                              ]),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))),
      ),
    );
  }
}
