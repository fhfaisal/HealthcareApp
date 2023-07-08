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

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: mq.height * .02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Service',
            style: categoryStyle(16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: mq.height * .20,
                width: mq.width * .45,
                decoration: BoxDecoration(
                    color: secondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      height: mq.height * .08,
                      width: mq.width * .20,
                      decoration: BoxDecoration(
                          color: secondaryColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SvgPicture.asset(
                          'assets/images/calendar.svg',
                          color: secondaryColor,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Doctors Appointment",
                          style: categoryStyle(14),
                        ))
                  ],
                ),
              ),
              Container(
                height: mq.height * .20,
                width: mq.width * .45,
                decoration: BoxDecoration(
                    color: const Color(0xffFF8811).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      height: mq.height * .08,
                      width: mq.width * .20,
                      decoration: BoxDecoration(
                          color: const Color(0xffFF8811).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SvgPicture.asset(
                          'assets/images/person.svg',
                          color: const Color(0xffFF8811),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Appointment with Patriot",
                          style: categoryStyle(14),
                        ))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.btnText,
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
              "${btnText}",
              style: myFontStyle(17, FontWeight.w600, Colors.white),
            )
          : Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${btnText}",
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

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffEFEFEF),
          borderRadius: BorderRadius.circular(5)),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Badge(
          child: Icon(Icons.notifications_none, size: 30),
        ),
      ),
    );
  }
}
