import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String email = 'g@gmail.com';
  String pass = '123123';

  final textControler = TextEditingController();
  final passControler = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool isPressed = false;
  void login() {
    if (formKey.currentState!.validate()) {
      print(textControler.text);
      print(passControler.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'تسجيل الدخول',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Almarai',
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 75),
            Image.asset('assets/accaountIcon.png', width: 150, height: 150),
            SizedBox(height: 70),
            Form(
              key: formKey,
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'الايميل',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Almarai',
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: TextFormField(
                          controller: textControler,
                          maxLines: 1,
                          cursorColor: Colors.grey,
                          cursorWidth: 3,
                          cursorRadius: const Radius.circular(5),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            hintText: 'example@email.com',
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'الرجاء ادخال الايميل';
                            } else if (!value.contains('@')) {
                              return 'الرجاء ادخال ايميل صحيح';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'كلمة المرور',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Almarai',
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: TextFormField(
                          controller: passControler,
                          maxLines: 1,
                          cursorColor: Colors.grey,
                          cursorWidth: 3,
                          cursorRadius: const Radius.circular(5),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            hintText: '*****',
                            prefixIcon: const Icon(
                              Icons.key_outlined,
                              color: Colors.black,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'الرجاء ادخال كلمة المرور';
                            } else if (value.length < 6) {
                              return 'كلمة المرور قصيرة';
                            }
                            return null;
                          },
                          obscureText: true,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'تسجيل دخول',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Almarai',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                 SizedBox(height: 20),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'ليس لديك حساب ؟',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Almarai',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 7),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "signupPage");
                        },
                        child: Text(
                          'انشئ حساب ',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                  ],
                 )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
