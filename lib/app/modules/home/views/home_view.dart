import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Daftar Sertifikasi'),
        //   centerTitle: true,
        // ),
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height / 12,
            ),
            Container(
                height: Get.height / 5,
                width: Get.width / 3,
                child: Image.asset('assets/logosiids.png')),
            Text("PTSI - ESERTIFIKAT"),
            SizedBox(
              height: Get.height / 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0),
              child: TextField(
                obscureText: true,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.grey,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 20.0, left: 20.0, bottom: 10.0),
              child: TextField(
                obscureText: true,
                autocorrect: false,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.vpn_key,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("LOGIN"),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 165, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0))),
            ),
            SizedBox(
              height: Get.height / 15,
            ),
            Text.rich(
              TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(fontSize: 18),
                  children: [
                    TextSpan(
                        text: "Daftar",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 18,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("daftar");
                          })
                  ]),
            ),
          ],
        ),
      ),
    ));
  }
}
