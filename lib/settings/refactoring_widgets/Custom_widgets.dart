import 'package:doctor_app/models/doctors_category.dart';
import 'package:doctor_app/settings/system/widget_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorPadding: 10,
      indicatorRadius: 3,
      indicatorBottomPadding: 5,
      indicatorColor: primaryColors,
      indicatorBackgroundColor: secondaryColor,
      onPageChanged: (value) {
        debugPrint('Page changed: $value');
      },
      autoPlayInterval: 5000,
      isLoop: true,
      children: [
        Image.asset(
          'assets/images/slider.png',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/images/slider.png',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/images/slider.png',
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}



class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, required this.btnText,
      required this.onTap,
      this.isOutlined,
      this.isIcon,
      this.addIcon,
      this.size,
      this.color});

  String btnText;
  VoidCallback onTap;
  bool? isOutlined;
  bool? isIcon;
  IconData? addIcon;
  double? size;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      minWidth: double.infinity,
      color: isOutlined == null ? secondaryColor : scaffoldBgClr,
      height: 56,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(
            color: isOutlined == null ? secondaryColor:scaffoldBgClr),
      ),
      child: isIcon == null
          ? Text(
              btnText,
              style: myFontStyle(17, FontWeight.w600, Colors.white),
            )
          : Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  btnText,
                  style: myFontStyle(17, FontWeight.w600, Colors.white),
                ),
                Icon(
                  addIcon,
                  size: size,
                  color: color,
                ),
              ],
            ),
    );
  }
}
