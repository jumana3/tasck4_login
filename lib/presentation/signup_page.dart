import 'package:flutter/material.dart';

class signupPage extends StatefulWidget {
  const signupPage({super.key});

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {

  final textControler = TextEditingController();
  final passControler = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'حساب جديد',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Almarai',
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon:  Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
                            'الاسم',
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
                            hintText: 'جمانه',
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'الرجاء ادخال الاسم';
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
                        ' لديك حساب ؟',
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
                          Navigator.pushNamed(context, "loginpage");
                        },
                        child: Text(
                          'تسجيل دخول',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
