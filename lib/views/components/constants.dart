import 'package:flutter/material.dart';
import 'package:get/get.dart';

const primaryColor = Color.fromRGBO(166, 128, 255, 1);
const primaryColor2 = Color.fromRGBO(236, 227, 255, 1);
const primaryColor3 = Color.fromRGBO(210, 189, 255, 1);

const backgroundColor = Color.fromRGBO(239, 242, 247, 1);
const secondaryColor = Color(0xff000000);
const blackColor = Color(0xff000000);
const textColor1 = Color.fromARGB(255, 79, 79, 79);
const textColor2 = Colors.grey;
const icon = Colors.grey;
const fontFamily = TextStyle(fontFamily: "Poppins");

Image logo = Image.asset(
  "assets/images/logo.png",
  height: 200,
  // width: 100,
);
const Icon lockIcon = Icon(Icons.lock);
showMessage(
    {required String title, required String message, isSuccess = true}) {
  Get.snackbar(
    title,
    message,
    colorText: Colors.white,
    backgroundColor: isSuccess ? Colors.green : Colors.red,
  );
}

//Pages for bottom navigation bar

