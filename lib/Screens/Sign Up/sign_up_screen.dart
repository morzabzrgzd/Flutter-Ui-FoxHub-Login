import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:login_fox_hub/constants.dart';
import 'package:login_fox_hub/widgets/button.dart';
import 'package:login_fox_hub/widgets/text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBachgroun1Color,
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset('assets/images/header1.png'),
              ),
              Text(
                'Let’s Get You Started',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 30),
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.width * 0.1,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              BuildTextField(
                obscureText: false,
                size: size,
                hintText: 'Johnson Doe',
                icon: const Icon(
                  FeatherIcons.user,
                  color: Colors.grey,
                ),
              ),
              BuildTextField(
                obscureText: false,
                size: size,
                hintText: 'example@gmail.com',
                icon: const Icon(
                  FeatherIcons.mail,
                  color: Colors.grey,
                ),
              ),
              BuildTextField(
                obscureText: true,
                size: size,
                hintText: 'Password',
                icon: const Icon(
                  FeatherIcons.lock,
                  color: Colors.grey,
                ),
              ),
              Button(
                size: size,
                name: 'Create New Account',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Existing Member?',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: size.width * 0.035,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        ' LOG IN',
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
