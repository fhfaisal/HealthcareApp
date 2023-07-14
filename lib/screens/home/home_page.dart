
import 'package:doctor_app/screens/home/telemedicine.dart';
import 'package:doctor_app/settings/refactoring_widgets/Custom_widgets.dart';
import 'package:doctor_app/settings/system/widget_settings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
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
                const ServiceWidget(),
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
                const DoctorCategory(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


