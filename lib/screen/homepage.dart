import 'dart:ui';

import 'package:app/custom_textfeild.dart';
import 'package:app/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class HomePage extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: SingleChildScrollView(
        child: ModalProgressHUD(
          inAsyncCall: isLoading == true,
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 115),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                        image: AssetImage('images/two.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Please Give Your Information",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red.shade800),
                    ),
                  ),
                ),
                CustomeTextField(
                  hintText: "Enter Your Email",
                  controller: emailcontroller,
                  icon: Icons.email_rounded,
                ),
                CustomeTextField(
                  hintText: "Enter Your Password",
                  controller: passwordController,
                  icon: Icons.email_rounded,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProfilePage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Please Check My Bio-Data",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
