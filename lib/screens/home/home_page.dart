
import 'package:doctor_app/models/doctors_category.dart';
import 'package:doctor_app/screens/home/category_details_screen.dart';
import 'package:doctor_app/screens/home/telemedicine.dart';
import 'package:doctor_app/settings/refactoring_widgets/Custom_widgets.dart';
import 'package:doctor_app/settings/system/widget_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Choose Specialist Doctors'),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: mq.width * .04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: mq.height * .01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: const AssetImage(
                              'assets/images/profile.jpg',
                            ),
                            maxRadius: mq.aspectRatio * 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Good Morning',
                                  style: normalStyle(),
                                ),
                                Text(
                                  'User Name',
                                  style: boldStyle(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffEFEFEF),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Badge(
                            child: Icon(Icons.notifications_none, size: 30),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: const CustomSlider(),
                ),
                Container(
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
                                  margin: const EdgeInsets.all(15),
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
                                    margin: const EdgeInsets.symmetric(horizontal: 15),
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
                ),
                CustomButton(
                  btnText: 'Other Services',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Telemedicine(),));
                  },
                  isIcon: true,
                  addIcon: Icons.arrow_forward_outlined,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Choose from top specialists',
                    style: categoryStyle(),
                  ),
                ),
                Container(
                  height: 100,
                  child: GridView.builder(
                    itemCount: specialistsList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: false,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.1,
                      crossAxisCount: 1,
                      mainAxisSpacing: 0,

                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoryDetailsScreen(specialist: specialistsList[index]),));
                        },
                        child: Column(
                          children: [
                            Container(
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
                            Container(
                              width: mq.width * .18,
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                '${specialistsList[index].categoryName}',
                                style: myFontStyle(12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}


