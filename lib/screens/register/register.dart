import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:white_label_flutter/constants/size.dart';
import 'package:white_label_flutter/constants/strings.dart';
import 'package:white_label_flutter/routes.dart';
import 'package:white_label_flutter/widgets/appBar/appBarWidget.dart';
import 'package:white_label_flutter/widgets/button/buttonWidget.dart';
import 'package:white_label_flutter/widgets/inputField/inputFieldWidget.dart';
import 'package:white_label_flutter/widgets/safeArea/saveAreaWidget.dart';
import 'package:white_label_flutter/widgets/text/textWidget.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        usageFor: Routes.register,
      ),
      body: SafeAreaWidget(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              margin: EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextWidget(
                    text: Strings.createAccountText,
                    fontSize: Size.TITLE,
                    fontWeight: FontWeight.bold,
                  ),
                  TextWidget(text: Strings.registerInfo1Text),
                  TextWidget(text: Strings.registerInfo2Text),
                  Form(
                      child: Column(
                    children: <Widget>[
                      InputFieldWidget(
                        hintText: "First Name*",
                        obscureText: true,
                        textInputType: TextInputType.text,
                        functionValidate: commonValidation,
                      ),
                      InputFieldWidget(
                        hintText: "Last Name*",
                        obscureText: true,
                        textInputType: TextInputType.text,
                        functionValidate: commonValidation,
                      ),
                      InputFieldWidget(
                        hintText: "Email address**",
                        obscureText: true,
                        textInputType: TextInputType.emailAddress,
                        functionValidate: commonValidation,
                      ),
                      ButtonWidget(
                        text: Strings.createAccountText,
                        minWidth: 250,
                        margin: EdgeInsets.symmetric(vertical: 50),
                        onClick: () {
                          Navigator.pushNamed(context, Routes.dashboard);
                        },
                      ),
                    ],
                  ))
                ],
              ),
            )),
      ),
    );
  }
}