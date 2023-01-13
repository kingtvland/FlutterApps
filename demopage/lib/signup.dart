// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height * 1.00,
          width: double.infinity,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Use your work email to signup",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      fontFamily: "SFPro"),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  "name",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: "SFPro"),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "name is empty";
                    }
                  },
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: "Enter your name",
                      labelText: "Enter your name",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xffACACAC),
                          fontFamily: "SFPro"),
                      labelStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE1E1E1)),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE1E1E1)),
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "email",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: "SFPro"),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "email is empty";
                    }
                    if (!value.contains("@")) {
                      return "email feild requred";
                    }
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "Enter your email",
                      labelText: "Enter your email",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xffACACAC),
                          fontFamily: "SFPro"),
                      labelStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE1E1E1)),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Color(0xffE1E1E1)),
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "password",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: "SFPro"),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "password is empty";
                    }
                    if (value.length < 3) {
                      return "password is too short";
                    }
                    if (value.length > 8) {
                      return "password is too Long";
                    }
                  },
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  obscuringCharacter: "*",
                  obscureText: isObsecure,
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    labelText: "password",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color(0xffACACAC),
                        fontFamily: "SFPro"),
                    labelStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                        },
                        icon: Icon(isObsecure
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE1E1E1)),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Color(0xffE1E1E1)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "confirm password",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: "SFPro"),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Confirm password is empty";
                    }
                    if (value.length < 3) {
                      return " Confirm password is too short";
                    }
                    if (value.length > 8) {
                      return " Confirm password is too Long";
                    }
                  },
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  obscuringCharacter: "*",
                  obscureText: isObsecure,
                  controller: confirmpasswordController,
                  decoration: InputDecoration(
                    hintText: "Enter your confirm password",
                    labelText: "Confirm password",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color(0xffACACAC),
                        fontFamily: "SFPro"),
                    labelStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                        },
                        icon: Icon(isObsecure
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Color(0xffE1E1E1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Color(0xffE1E1E1)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "name is empty";
                    }
                  },
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: "Slect Position",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xffACACAC),
                          fontFamily: "SFPro"),
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE1E1E1)),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE1E1E1)),
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                ),
                Spacer(),
                ElevatedButton(
                    style: ButtonStyle(elevation: MaterialStatePropertyAll(0)),
                    onPressed: () {},
                    child: Container(
                      width: double.infinity,
                      height: 52,
                      // padding: EdgeInsets.symmetric(vertical: 16, horizontal: 116),
                      child: Center(
                        child: Text(
                          "Signup",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              fontFamily: "SFPro"),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                      side: MaterialStatePropertyAll(BorderSide(
                        color: Color(0xffC7E0F4),
                        width: 1,
                      )),
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: double.infinity,
                      height: 52,
                      // padding: EdgeInsets.symmetric(vertical: 16, horizontal: 116),
                      child: Center(
                        child: Text(
                          "Alredy have your account? Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.blue,
                              fontFamily: "SFPro"),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isObsecure = false;
}
