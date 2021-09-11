import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_fox_hub/constants.dart';


class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.size,required this.name,
  }) : super(key: key);

  final Size size;
  final String name;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: 7),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: size.height * 0.018,
      ),
      height: size.height * 0.08,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
                color: kTextColor, fontSize: size.width * 0.04),
          ),
          SvgPicture.asset('assets/icons/arrow.svg')
        ],
      ),
    );
  }
}
