import 'package:flutter/material.dart';
import 'package:project_uas/ui/login_page.dart';
import 'package:project_uas/ui/produk_page.dart';
import 'package:project_uas/ui/registrasi_page.dart';
import 'package:project_uas/helpers/user_info.dart';
import 'package:project_uas/ui/login_page.dart';
import 'package:project_uas/ui/produk_page.dart';


void main() {
  runApp(const MyApp());
}

 class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
  Widget page = const CircularProgressIndicator();

  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    var token = await UserInfo().getToken();
    if (token != null) {
      setState(() {
      page = const ProdukPage();
      });
    } else {
      setState(() {
        page = const ProdukPage();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TUKU',
      debugShowCheckedModeBanner: false,
      home: page,
    );
  }
 }



