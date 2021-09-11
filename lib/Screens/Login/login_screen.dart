import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:login_fox_hub/Screens/Sign%20Up/sign_up_screen.dart';
import 'package:login_fox_hub/constants.dart';
import 'package:login_fox_hub/widgets/button.dart';
import 'package:login_fox_hub/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBachgroun2Color,
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset('assets/images/header.png'),
              ),
              Text(
                'Welcome Back!',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 30),
                child: Text(
                  'Login',
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
                name: 'Continue to Account',
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                ),
                child: Text(
                  'Having Issues?',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.width * 0.03,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                ),
                child: const Divider(
                  color: Colors.white,
                  thickness: .3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: size.width * 0.035,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        ' REGISTER',
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
