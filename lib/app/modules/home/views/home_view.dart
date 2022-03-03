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
                        text: "Register",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 18,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("daftar");
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              builder: (context) => Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.85,
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(6.0),
                                    topRight: const Radius.circular(6.0),
                                  ),
                                ),
                                child: Center(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: Get.height / 45,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        "Register",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 35),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height / 30,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.73,
                                      child: ListView(
                                        shrinkWrap: true,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20.0, left: 20.0),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                label: Text("EMAIL"),
                                                hintText: "EMAIL",
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                              right: 20.0,
                                              left: 20.0,
                                            ),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                  label: Text("PASSWORD"),
                                                  hintText: "PASSWORD",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                              right: 20.0,
                                              left: 20.0,
                                            ),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                  label: Text(
                                                      "KONFIRMASI PASSWORD"),
                                                  hintText:
                                                      "KONFIRMASI PASSWORD",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                              right: 20.0,
                                              left: 20.0,
                                            ),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                  label:
                                                      Text("NAMA PERUSAHAAN "),
                                                  hintText: "NAMA PERUSAHAAN ",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                              right: 20.0,
                                              left: 20.0,
                                            ),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                  label: Text("NPWP"),
                                                  hintText: "NPWP",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                              right: 20.0,
                                              left: 20.0,
                                            ),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                  label:
                                                      Text("JENIS BADAN USAHA"),
                                                  hintText: "JENIS BADAN USAHA",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                              right: 20.0,
                                              left: 20.0,
                                            ),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                  label: Text("KBLI"),
                                                  hintText: "KBLI",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                              right: 20.0,
                                              left: 20.0,
                                            ),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                  label: Text("ALAMAT"),
                                                  hintText: "ALAMAT",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                              right: 20.0,
                                              left: 20.0,
                                            ),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                  label: Text("NEGARA"),
                                                  hintText: "NEGARA",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                              right: 20.0,
                                              left: 20.0,
                                            ),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                  label: Text("PROVINSI"),
                                                  hintText: "PROVINSI",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                              right: 20.0,
                                              left: 20.0,
                                            ),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                  label: Text("KABUPATEN/KOTA"),
                                                  hintText: "KABUPATEN/KOTA",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                              right: 20.0,
                                              left: 20.0,
                                            ),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                  label: Text("KECAMATAN"),
                                                  hintText: "KECAMATAN",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                              right: 20.0,
                                              left: 20.0,
                                            ),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                  label: Text("KELURAHAN/DESA"),
                                                  hintText: "KELURAHAN/DESA",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10.0,
                                              right: 20.0,
                                              left: 20.0,
                                            ),
                                            child: TextField(
                                              obscureText: true,
                                              autocorrect: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                  label: Text("TELEPON"),
                                                  hintText: "TELEPON",
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                          SizedBox(
                                            height: Get.height / 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text("CONTACT PERSON/PIC"),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    showDialog(
                                                        context: context,
                                                        builder:
                                                            (builder) =>
                                                                AlertDialog(
                                                                  elevation: 0,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(6),
                                                                  ),
                                                                  content:
                                                                      Container(
                                                                    height: 300,
                                                                    width: 500,
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.only(
                                                                            top:
                                                                                10.0,
                                                                            right:
                                                                                2.0,
                                                                            left:
                                                                                2.0,
                                                                          ),
                                                                          child:
                                                                              TextField(
                                                                            obscureText:
                                                                                true,
                                                                            autocorrect:
                                                                                false,
                                                                            textInputAction:
                                                                                TextInputAction.next,
                                                                            decoration: InputDecoration(
                                                                                label: Text("NAMA"),
                                                                                hintText: "NAMA",
                                                                                border: OutlineInputBorder()),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              top: 10.0,
                                                                              right: 2.0,
                                                                              left: 2.0),
                                                                          child:
                                                                              TextField(
                                                                            obscureText:
                                                                                true,
                                                                            autocorrect:
                                                                                false,
                                                                            keyboardType:
                                                                                TextInputType.emailAddress,
                                                                            textInputAction:
                                                                                TextInputAction.next,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              border: OutlineInputBorder(),
                                                                              label: Text("EMAIL"),
                                                                              hintText: "EMAIL",
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.only(
                                                                            top:
                                                                                10.0,
                                                                            right:
                                                                                2.0,
                                                                            left:
                                                                                2.0,
                                                                            bottom:
                                                                                10.0,
                                                                          ),
                                                                          child:
                                                                              TextField(
                                                                            obscureText:
                                                                                true,
                                                                            autocorrect:
                                                                                false,
                                                                            textInputAction:
                                                                                TextInputAction.next,
                                                                            decoration: InputDecoration(
                                                                                label: Text("TELEPON"),
                                                                                hintText: "TELEPON",
                                                                                border: OutlineInputBorder()),
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            ElevatedButton(
                                                                              onPressed: () {
                                                                                Get.back();
                                                                              },
                                                                              child: Text(
                                                                                "CANCEL",
                                                                                style: TextStyle(color: Colors.black),
                                                                              ),
                                                                              style: ElevatedButton.styleFrom(shadowColor: Colors.white, primary: Colors.white, padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0), side: BorderSide(color: Colors.blue))),
                                                                            ),
                                                                            ElevatedButton(
                                                                              onPressed: () {},
                                                                              child: Text("TAMBAH"),
                                                                              style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
                                                                            ),
                                                                          ],
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ));
                                                  },
                                                  child: Text("+ TAMBAH"),
                                                  style: ElevatedButton.styleFrom(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 60,
                                                              vertical: 20),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.0))),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: Get.height / 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20.0, left: 20.0),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: Text(
                                                                                "CANCEL",
                                                                                style: TextStyle(color: Colors.black),
                                                                              ),
                                                                              style: ElevatedButton.styleFrom(shadowColor: Colors.white, primary: Colors.white, padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0), side: BorderSide(color: Colors.blue))),
                                            ),
                                          ),
                                          SizedBox(
                                            height: Get.height / 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20.0, left: 20.0),
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text("KIRIM"),
                                              style: ElevatedButton.styleFrom(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 100,
                                                      vertical: 15),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0))),
                                            ),
                                          ),
                                          SizedBox(
                                            height: Get.height / 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                              ),
                            );
                          })
                  ]),
            ),
          ],
        ),
      ),
    ));
  }
}
