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
            style: categoryStyle(),
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
                          style: regularStyle(),
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
                          style: regularStyle(),
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

class DoctorCategory extends StatelessWidget {
  const DoctorCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        margin: const EdgeInsets.only(top: 10),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(width: 10,);
          },
          itemCount: specialistsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  height: mq.height * .07,
                  width: mq.width * .18,
                  decoration: BoxDecoration(
                      color: secondaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(
                      '${specialistsList[index].icon}',
                      color: secondaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: mq.width * .18,
                  child: Text(
                    "${specialistsList[index].categoryName}",
                    style: myFontStyle(14),
                  ),
                )
              ],
            );
          },
        ));
  }
}
