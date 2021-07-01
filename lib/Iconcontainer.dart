import 'package:flutter/cupertino.dart';

class IconContainer extends StatelessWidget {
  final Color? iconcolor;
  final Color? bgcolor;
  final double? size;
  final double? radius;
  final double? iconsize;
  final IconData? icon;

  const IconContainer(
      {Key? key,
      this.iconcolor,
      this.bgcolor,
      this.size,
      this.iconsize,
      this.icon,
      this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(radius!),
      ),
      child: Icon(
        icon,
        color: iconcolor,
        size: iconsize,
      ),
    );
  }
}
