import 'package:flutter/material.dart';
import 'package:tasck4_login/presentation/login_page.dart';
import 'package:tasck4_login/presentation/signup_page.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginpage(),
      builder: (context, child) {
        return Directionality(textDirection: TextDirection.rtl, child: child!);
      },
      routes:{
        "signupPage" :(context) => signupPage(),
        "loginpage":(context) => loginpage()
      }
    );
  }
}

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
