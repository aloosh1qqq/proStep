import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class TextWithIconeWidget extends StatelessWidget {
  TextWithIconeWidget({super.key, required this.title, required this.svgIcon});
  String title;
  String svgIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/images/$svgIcon",
          color: Color(0xff1d405b),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xff1d405b),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
