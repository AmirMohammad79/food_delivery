import 'package:flutter/cupertino.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backGroundColor;
  final Color iconColor;
  final double size;
  const AppIcon({
    Key? key,
    required this.icon,
    this.backGroundColor = const Color(0xfffcf4e4),
    this.iconColor = const Color(0xff756d54),
    this.size = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(size/2)
      ),
      child: Icon(
        icon , color:  iconColor, size: 16,
      ),
    );
  }
}
