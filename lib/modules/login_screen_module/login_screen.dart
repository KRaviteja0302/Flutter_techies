import 'package:flutter/material.dart';


import '../../custom_widgets_constants/custom_button_widget.dart';

import '../../custom_widgets_constants/custom_password_textfeild_widget.dart';
import '../../custom_widgets_constants/custom_textfeild_widget.dart';
import '../../custom_widgets_constants/custom_textstyle.dart';
import '../../model/validationmodel.dart';
import '../../utility/color_constants.dart';
import '../../utility/image_constants.dart';
import '../../utility/size_constants.dart';
import '../../utility/text_constants.dart';
import '../signup_screen_module/signup_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final validation = ValidationModel();
  final textfeildcontroller = TextEditingController();
  final passwordController = TextEditingController();
  bool hidePassowrd = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(SizeConstants.s16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / SizeConstants.s3,
                child: Image.asset(ImageConstants.loginImage),
              ),
              SizedBox(
                height: SizeConstants.s2,
              ),
              Text(
                TextConstants.welcomeback,
                style: TextStyle(
                    fontFamily: "Merriweather",
                    fontSize: SizeConstants.s38,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: SizeConstants.s30,
              ),
              CustomTextFeild(
                eamilcontroller: textfeildcontroller,
                text: TextConstants.email,
                prefixICon: Icon(Icons.person),
                isPass: false,
                errorText: validation.email.error,
                onChanged: (value) {
                  validation.validateEmail(value);
                  setState(() {});
                },
              ),
              SizedBox(
                height: SizeConstants.s30,
              ),
              CustomTextFeild(
                  eamilcontroller: passwordController,
                  errorText: validation.password.error,
                  onChanged: (value) {
                    validation.validatePassword(value);
                    setState(() {});
                  },
                  text: TextConstants.password,
                  prefixICon: Icon(Icons.lock),
                  isPass: true),
              // CustomPasswordTextFeild(
              //   errorText: validation.password.error,
              //   passwordController: passwordController,
              //   onChanged: (value) {
              //     setState(() {
              //       validation.validatePassword(value);
              //     });
              //   },
              //   text: TextConstants.password,
              //   prefixICon: Icon(Icons.lock),
              //   suffixICon: IconButton(
              //       onPressed: () {
              //         setState(() {
              //           hidePassowrd = !hidePassowrd;
              //           print("$hidePassowrd");
              //         });
              //       },
              //       icon: hidePassowrd
              //           ? Icon(Icons.visibility)
              //           : Icon(Icons.visibility_off)),
              //   isPass: hidePassowrd,
              // ),
              SizedBox(
                height: SizeConstants.s12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextStyle(
                      text: TextConstants.forgetPassword,
                      fontSize: SizeConstants.s12,
                      textColor: Colors.black,
                      fontFamily: "Merriweather",
                      onClicked: forgetButtonClick),
                ],
              ),
              SizedBox(
                height: SizeConstants.s30,
              ),
              CustomButton(
                  title: TextConstants.login,
                  bgcolor: ColorConstants.colorPrimary,
                  radiussize: SizeConstants.s8,
                  width: MediaQuery.of(context).size.width,
                  height:
                      MediaQuery.of(context).size.height / SizeConstants.s12,
                  fontfamily: "Merriweather",
                  fontsize: SizeConstants.s16,
                  textcolor: Colors.white,
                  onClicked: loginButtonClick),
              SizedBox(
                height: SizeConstants.s40,
              ),
              CustomTextStyle(
                text: TextConstants.orConnectwithsocial,
                fontSize: SizeConstants.s16,
                textColor: ColorConstants.colorOrcoonect,
                fontFamily: "Merriweather",
                onClicked: () {},
              ),
              SizedBox(
                height: SizeConstants.s20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(
                      title: TextConstants.faceBook,
                      bgcolor: ColorConstants.colorPrimary,
                      radiussize: SizeConstants.s5,
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height /
                          SizeConstants.s14,
                      fontfamily: "Merriweather",
                      fontsize: SizeConstants.s10,
                      textcolor: Colors.white,
                      onClicked: () {}),
                  SizedBox(
                    width: SizeConstants.s10,
                  ),
                  CustomButton(
                      title: TextConstants.google,
                      bgcolor: ColorConstants.colorGoogleBtn,
                      radiussize: SizeConstants.s5,
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height /
                          SizeConstants.s14,
                      fontfamily: "Merriweather",
                      fontsize: SizeConstants.s10,
                      textcolor: Colors.white,
                      onClicked: () {})
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  forgetButtonClick() {
    // Navigator.of(context).pushAndRemoveUntil(
    //     MaterialPageRoute(builder: (context) => ForgetPassword()),
    //     (route) => false);
  }

  loginButtonClick() {
    validation.isValid
        ? Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => SignUpScreen()),
            (route) => false)
    // ? () {
    //     validation.login();
    //     print("object");
    //   }
        : null;
    // Navigator.of(context).pushAndRemoveUntil(
    //     MaterialPageRoute(builder: (context) => ListviewData()),
    //     (route) => false);
  }
}

